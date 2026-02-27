CREATE TABLE material_logs
(
    id            BIGSERIAL PRIMARY KEY,
    user_id       BIGINT                   NOT NULL DEFAULT 0,
    material_type TEXT                     NOT NULL DEFAULT 'news',  -- info, news, image, data
    status        TEXT                     NOT NULL DEFAULT 'doing', -- doing failed success nodata
    remark        TEXT                     NOT NULL DEFAULT '',
    query         TEXT                     NOT NULL DEFAULT '',
    is_settle     BOOLEAN                  NOT NULL DEFAULT false,
    exec_id       TEXT                     NOT NULL DEFAULT '',
    cost          JSONB                    NOT NULL DEFAULT '{}',    -- 成本
    created_at    TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at    TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_material_logs_user_id ON material_logs (user_id);

-- 5. 素材表 (materials)
CREATE TABLE materials
(
    id               BIGSERIAL PRIMARY KEY,
    user_id          BIGINT                   NOT NULL DEFAULT 0,
    material_logs_id BIGINT                   NOT NULL DEFAULT 0,
    title            TEXT                     NOT NULL DEFAULT '',
    material_type    TEXT                     NOT NULL DEFAULT 'news', -- info, news, image, data
    source_url       TEXT                     NOT NULL DEFAULT '',
    content          TEXT                     NOT NULL DEFAULT '',
    created_at       TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_materials_user_id ON materials (user_id);