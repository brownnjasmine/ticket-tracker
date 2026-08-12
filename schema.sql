CREATE SCHEMA tickets;

CREATE TABLE tickets (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    severity TEXT NOT NULL,       -- e.g. 'low', 'medium', 'high'
    status TEXT NOT NULL DEFAULT 'open',  -- 'open', 'in_progress', 'resolved'
    category TEXT,                -- 'bug', 'feature', 'ux', etc.
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    resolved_at TIMESTAMP,        -- NULL until closed
    resolution_notes TEXT         -- what you actually did to fix it
);