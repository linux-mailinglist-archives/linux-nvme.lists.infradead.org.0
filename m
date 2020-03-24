Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23587190853
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 09:53:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WH2FIIbaj6IXq1MH5O4TaYJd6G6rx2kRzYazKYMELSo=; b=JDia/BxLyUzr9f
	upqNfl+ix2A7VqIsdy+tTlFS2Pun8+dU9i3vENhf8gPwoIdr/i+XkG2cDSVzwRcXkm6mAZxOyjSpJ
	dKPmpcw5kg/0zG+Se9QJswtpgW3XjMEQrFvZaF6RVmdTMoWPH5i2quZSAtTjg9+uspHxIm8oaPwHo
	NAT6vDzRMQq+EKkFSMk/k3faR14rLX38brJlj43T44U1+FeZPKFl6FnJKgs+qC7UvAIqUbzYYqfIE
	5fEhdBHn85R94Y3z4O34payZms92XuPy+FB6JheQpj0MsVhmob+wLAXjV65w9Quy1fs7uoYe2nO0n
	Jq89NbcVNpcgrUW/SozQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGfJW-0007JD-1O; Tue, 24 Mar 2020 08:53:34 +0000
Received: from [2601:647:4802:9070:45a4:15de:f2dc:1149]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGfJT-0007II-3T; Tue, 24 Mar 2020 08:53:31 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org,
	Keith Busch <kbusch@kernel.org>
Subject: [PATCH 1/2] nvme-print: list also hostnqn and hostid for verbose
Date: Tue, 24 Mar 2020 01:53:27 -0700
Message-Id: <20200324085328.23387-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Add it to the json output as the normal display is crowded enough as it is.
Note that we print them only if they exist in sysfs which gives us backward
compatibility (as hostnqn and hostid are still new).

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 nvme-print.c    | 4 ++++
 nvme-topology.c | 4 ++++
 nvme.h          | 2 ++
 3 files changed, 10 insertions(+)

diff --git a/nvme-print.c b/nvme-print.c
index 579ac100e641..302899ef8b05 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -4497,6 +4497,10 @@ static void json_detail_list(struct nvme_topology *t)
 			json_object_add_value_string(ctrl_attrs, "Transport", c->transport);
 			json_object_add_value_string(ctrl_attrs, "Address", c->address);
 			json_object_add_value_string(ctrl_attrs, "State", c->state);
+			if (c->hostnqn)
+				json_object_add_value_string(ctrl_attrs, "HostNQN", c->hostnqn);
+			if (c->hostid)
+				json_object_add_value_string(ctrl_attrs, "HostID", c->hostid);
 
 			format(formatter, sizeof(formatter), c->id.fr, sizeof(c->id.fr));
 			json_object_add_value_string(ctrl_attrs, "Firmware", formatter);
diff --git a/nvme-topology.c b/nvme-topology.c
index f2d0e7a4e344..30a9eb3c4474 100644
--- a/nvme-topology.c
+++ b/nvme-topology.c
@@ -195,6 +195,8 @@ static int scan_ctrl(struct nvme_ctrl *c, char *p, __u32 ns_instance)
 	c->address = nvme_get_ctrl_attr(path, "address");
 	c->transport = nvme_get_ctrl_attr(path, "transport");
 	c->state = nvme_get_ctrl_attr(path, "state");
+	c->hostnqn = nvme_get_ctrl_attr(path, "hostnqn");
+	c->hostid = nvme_get_ctrl_attr(path, "hostid");
 
 	if (ns_instance)
 		c->ana_state = get_nvme_ctrl_path_ana_state(path, ns_instance);
@@ -406,6 +408,8 @@ static void free_ctrl(struct nvme_ctrl *c)
 	free(c->transport);
 	free(c->address);
 	free(c->state);
+	free(c->hostnqn);
+	free(c->hostid);
 	free(c->ana_state);
 	free(c->namespaces);
 }
diff --git a/nvme.h b/nvme.h
index f6a94e9757c6..017148ae5fb0 100644
--- a/nvme.h
+++ b/nvme.h
@@ -55,6 +55,8 @@ struct nvme_ctrl {
 	char *traddr;
 	char *trsvcid;
 	char *host_traddr;
+	char *hostnqn;
+	char *hostid;
 
 	struct nvme_id_ctrl id;
 
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
