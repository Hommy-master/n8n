CREATE USER n8n WITH PASSWORD '589a2d587d0366cbfb0185efe775d161';
GRANT ALL PRIVILEGES ON DATABASE n8n TO n8n;
-- 还需要授权用户在public schema中创建表（否则后续迁移可能失败）
\c n8n
GRANT ALL ON SCHEMA public TO n8n;