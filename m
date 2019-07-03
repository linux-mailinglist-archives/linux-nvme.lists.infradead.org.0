Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9AC5EF38
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 00:43:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:In-Reply-To:
	MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=18KmLmu28bDgAQZCEPUkeXcsF2VLBjnOWOVObHoPZZ0=; b=R1gJfIDQee6S6q1/bMjTfv7/e
	83vi3kbTrKYzGmkmjmrsJohHyYf3XPY96eYOQTrd64BnqiZElVZOf54Vqmhpon4pYUQryQT49Rz8c
	yrT9fE59L+qGmd9AhU/GtvwXQ9OMHrkS5+iWgFO68h2G/5DAG6Jej1eSvU1j+tdf4s1+UkbVeP5o1
	NzqOns6GT/l4hi4gvN46/MFJhaeJ3dBV7jTItobxRk9qMHnBd6KNJS2o1WRZK3IFmuSAlorqjxel9
	zL8C/O7Th144nMiqXAHEswYcQOqZurpaW0d2srBiR7QThn6H2a+bDJ2DXtUb4UsBoSmYBzQd/cgcW
	PeH7Vnhsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hinxg-0007h8-NO; Wed, 03 Jul 2019 22:42:48 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hinxP-0007gm-R7
 for linux-nvme@lists.infradead.org; Wed, 03 Jul 2019 22:42:33 +0000
Received: by mail-ot1-f45.google.com with SMTP id o101so4079732ota.8
 for <linux-nvme@lists.infradead.org>; Wed, 03 Jul 2019 15:42:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=9Co9JYyRDaqjhmzA41JF3J6XX6vNer23OMTDufzrvAA=;
 b=fiVWM852kV1nI6MR2t2+99ru9IZ5ShWfnzuDod1+A7dLh/FO7LLv9NKDnOtKV/XKek
 WZzijOnNYI39aJ4WuXnW1tFbAOr7Usnv2ciyC4dA4gXKnTqfrCBNrVU33la/bhSTmCDO
 H8LTHsioGTovebbQSulnV9XC5NxRpHjjRJgDevjv1rXnDpmghCmbEkBZhIuV/Jx5WfiV
 KXCIpNufH1BWqELCQeF2rTeyyWiY37Yg1mDaCvDbJcXqbJbX2jYeTjv5P+NS2+4ljxYJ
 mD7X97h2uKkV4iuZ52aFmRf66/SQixux03u8lWDlyU+gIjiWGuOSasR/+wjj52KjG5/A
 LjQA==
X-Gm-Message-State: APjAAAVdZEX+hyxCtlqIK0pEI8RlUIllS9kdTiXpihb4PhaEmEhlzzgD
 JVJjK1ZqBF7ubPJzigtg45mJURma
X-Google-Smtp-Source: APXvYqxssnOTMbHOqAT4TquX4W/NqcvssHOdP4T67C2nMKynYXu6VNe5fr9bA8jRRMxRgWsRL+1tGQ==
X-Received: by 2002:a9d:704f:: with SMTP id x15mr10850306otj.297.1562193750183; 
 Wed, 03 Jul 2019 15:42:30 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id x5sm1338138otb.6.2019.07.03.15.42.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 15:42:28 -0700 (PDT)
Subject: Re: NULL pointer dereference in nvmet_rdma_queue_disconnect during
 bond failover
To: Max Gurtovoy <maxg@mellanox.com>, Alex Lyakas <alex@zadara.com>,
 linux-nvme@lists.infradead.org, Shlomi Nimrodi <shlomin@mellanox.com>,
 Israel Rukshin <israelr@mellanox.com>, tomwu@mellanox.com
References: <F7E28AA1609E4FC495B5E8D4250E7DEF@alyakaslap>
 <90599926-b7ec-8431-a7aa-c44fde08b5c4@grimberg.me>
 <ec4fb8df-98c4-fffc-7581-5245c397d16c@mellanox.com>
 <66ACE500178B47D6B39F23FE98D22363@alyakaslap>
 <b6443a7c-4be6-3dbc-0535-a8ded3261c50@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8ab1fa5e-2d67-5128-93b5-2f32704869e4@grimberg.me>
Date: Wed, 3 Jul 2019 15:42:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <b6443a7c-4be6-3dbc-0535-a8ded3261c50@mellanox.com>
Content-Type: multipart/mixed; boundary="------------D024FDC045BE49C9A5A8BDF1"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_154231_883938_265412D4 
X-CRM114-Status: GOOD (  23.83  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.45 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.
--------------D024FDC045BE49C9A5A8BDF1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

> Hi Alex,
> 
> Not yet. Our fix is in the Initiator/Host side and it was merged.
> 
> This is on our plate.
> 
> In case you would like to send a patch to solve this, we'll review it 
> of-course.

Does the attached untested patch help?

--------------D024FDC045BE49C9A5A8BDF1
Content-Type: text/x-patch;
 name="0001-nvmet-rdma-fix-bonding-failover-possible-NULL-deref.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-nvmet-rdma-fix-bonding-failover-possible-NULL-deref.pat";
 filename*1="ch"

From 18b3f79b318a2a71d2af78746a7298094a6f8fb2 Mon Sep 17 00:00:00 2001
From: Sagi Grimberg <sagi@grimberg.me>
Date: Wed, 3 Jul 2019 15:33:01 -0700
Subject: [PATCH] nvmet-rdma: fix bonding failover possible NULL deref

RDMA_CM_EVENT_ADDR_CHANGE event occur in the case of bonding failover
on normal as well as on listening cm_ids. Hence this event will
immediately trigger a NULL dereference trying to disconnect a queue
for a cm_id that actually belongs to the port.

To fix this we provide a different handler for the listener cm_ids
that will defer a work to disable+(re)enable the port which essentially
destroys and setups another listener cm_id

Reported-by: Alex Lyakas <alex@zadara.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/target/rdma.c | 166 +++++++++++++++++++++++++------------
 1 file changed, 114 insertions(+), 52 deletions(-)

diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index 5c9968ee5d34..c503cb728ba6 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -102,6 +102,13 @@ struct nvmet_rdma_queue {
 	struct list_head	queue_list;
 };
 
+struct nvmet_rdma_port {
+	struct nvmet_port	*nport;
+	struct sockaddr_storage addr;
+	struct rdma_cm_id	*cm_id;
+	struct delayed_work	repair_work;
+};
+
 struct nvmet_rdma_device {
 	struct ib_device	*device;
 	struct ib_pd		*pd;
@@ -1267,6 +1274,7 @@ static int nvmet_rdma_cm_accept(struct rdma_cm_id *cm_id,
 static int nvmet_rdma_queue_connect(struct rdma_cm_id *cm_id,
 		struct rdma_cm_event *event)
 {
+	struct nvmet_rdma_port *port = cm_id->context;
 	struct nvmet_rdma_device *ndev;
 	struct nvmet_rdma_queue *queue;
 	int ret = -EINVAL;
@@ -1282,7 +1290,7 @@ static int nvmet_rdma_queue_connect(struct rdma_cm_id *cm_id,
 		ret = -ENOMEM;
 		goto put_device;
 	}
-	queue->port = cm_id->context;
+	queue->port = port->nport;
 
 	if (queue->host_qid == 0) {
 		/* Let inflight controller teardown complete */
@@ -1407,7 +1415,7 @@ static void nvmet_rdma_queue_connect_fail(struct rdma_cm_id *cm_id,
 static int nvmet_rdma_device_removal(struct rdma_cm_id *cm_id,
 		struct nvmet_rdma_queue *queue)
 {
-	struct nvmet_port *port;
+	struct nvmet_rdma_port *port;
 
 	if (queue) {
 		/*
@@ -1426,7 +1434,7 @@ static int nvmet_rdma_device_removal(struct rdma_cm_id *cm_id,
 	 * cm_id destroy. use atomic xchg to make sure
 	 * we don't compete with remove_port.
 	 */
-	if (xchg(&port->priv, NULL) != cm_id)
+	if (xchg(&port->cm_id, NULL) != cm_id)
 		return 0;
 
 	/*
@@ -1457,6 +1465,12 @@ static int nvmet_rdma_cm_handler(struct rdma_cm_id *cm_id,
 		nvmet_rdma_queue_established(queue);
 		break;
 	case RDMA_CM_EVENT_ADDR_CHANGE:
+		if (!queue) {
+			struct nvmet_rdma_port *port = cm_id->context;
+
+			schedule_delayed_work(&port->repair_work, 0);
+			break;
+		}
 	case RDMA_CM_EVENT_DISCONNECTED:
 	case RDMA_CM_EVENT_TIMEWAIT_EXIT:
 		nvmet_rdma_queue_disconnect(queue);
@@ -1506,42 +1520,19 @@ void nvmet_rdma_init_tsas(struct nvmet_port *port)
 	port->disc_addr.tsas.rdma.prtype = NVMF_RDMA_PRTYPE_NOT_SPECIFIED;
 }
 
-static int nvmet_rdma_add_port(struct nvmet_port *port)
+static void nvmet_rdma_disable_port(struct nvmet_rdma_port *port)
 {
-	struct rdma_cm_id *cm_id;
-	struct sockaddr_storage addr = { };
-	__kernel_sa_family_t af;
-	int ret;
-
-	switch (port->disc_addr.adrfam) {
-	case NVMF_ADDR_FAMILY_IP4:
-		af = AF_INET;
-		break;
-	case NVMF_ADDR_FAMILY_IP6:
-		af = AF_INET6;
-		break;
-	default:
-		pr_err("address family %d not supported\n",
-				port->disc_addr.adrfam);
-		return -EINVAL;
-	}
+	struct rdma_cm_id *cm_id = xchg(&port->cm_id, NULL);
 
-	if (port->inline_data_size < 0) {
-		port->inline_data_size = NVMET_RDMA_DEFAULT_INLINE_DATA_SIZE;
-	} else if (port->inline_data_size > NVMET_RDMA_MAX_INLINE_DATA_SIZE) {
-		pr_warn("inline_data_size %u is too large, reducing to %u\n",
-			port->inline_data_size,
-			NVMET_RDMA_MAX_INLINE_DATA_SIZE);
-		port->inline_data_size = NVMET_RDMA_MAX_INLINE_DATA_SIZE;
-	}
+	if (cm_id)
+		rdma_destroy_id(cm_id);
+}
 
-	ret = inet_pton_with_scope(&init_net, af, port->disc_addr.traddr,
-			port->disc_addr.trsvcid, &addr);
-	if (ret) {
-		pr_err("malformed ip/port passed: %s:%s\n",
-			port->disc_addr.traddr, port->disc_addr.trsvcid);
-		return ret;
-	}
+static int nvmet_rdma_enable_port(struct nvmet_rdma_port *port)
+{
+	struct sockaddr *addr = (struct sockaddr *)&port->addr;
+	struct rdma_cm_id *cm_id;
+	int ret;
 
 	cm_id = rdma_create_id(&init_net, nvmet_rdma_cm_handler, port,
 			RDMA_PS_TCP, IB_QPT_RC);
@@ -1560,25 +1551,20 @@ static int nvmet_rdma_add_port(struct nvmet_port *port)
 		goto out_destroy_id;
 	}
 
-	ret = rdma_bind_addr(cm_id, (struct sockaddr *)&addr);
+	ret = rdma_bind_addr(cm_id, addr);
 	if (ret) {
-		pr_err("binding CM ID to %pISpcs failed (%d)\n",
-			(struct sockaddr *)&addr, ret);
+		pr_err("binding CM ID to %pISpcs failed (%d)\n", addr, ret);
 		goto out_destroy_id;
 	}
 
 	ret = rdma_listen(cm_id, 128);
 	if (ret) {
-		pr_err("listening to %pISpcs failed (%d)\n",
-			(struct sockaddr *)&addr, ret);
+		pr_err("listening to %pISpcs failed (%d)\n", addr, ret);
 		goto out_destroy_id;
 	}
 
-	nvmet_rdma_init_tsas(port);
+	port->cm_id = cm_id;
 
-	pr_info("enabling port %d (%pISpcs)\n",
-		le16_to_cpu(port->disc_addr.portid), (struct sockaddr *)&addr);
-	port->priv = cm_id;
 	return 0;
 
 out_destroy_id:
@@ -1586,18 +1572,94 @@ static int nvmet_rdma_add_port(struct nvmet_port *port)
 	return ret;
 }
 
-static void nvmet_rdma_remove_port(struct nvmet_port *port)
+static void nvmet_rdma_repair_port_work(struct work_struct *w)
 {
-	struct rdma_cm_id *cm_id = xchg(&port->priv, NULL);
+	struct nvmet_rdma_port *port = container_of(to_delayed_work(w),
+			struct nvmet_rdma_port, repair_work);
+	int ret;
 
-	if (cm_id)
-		rdma_destroy_id(cm_id);
+	nvmet_rdma_disable_port(port);
+	ret = nvmet_rdma_enable_port(port);
+	if (ret)
+		schedule_delayed_work(&port->repair_work, 5 * HZ);
+}
+
+static int nvmet_rdma_add_port(struct nvmet_port *nport)
+{
+	struct nvmet_rdma_port *port;
+	__kernel_sa_family_t af;
+	int ret;
+
+	port = kzalloc(sizeof(*port), GFP_KERNEL);
+	if (!port)
+		return -ENOMEM;
+
+	nport->priv = port;
+	port->nport = nport;
+	INIT_DELAYED_WORK(&port->repair_work, nvmet_rdma_repair_port_work);
+
+	switch (nport->disc_addr.adrfam) {
+	case NVMF_ADDR_FAMILY_IP4:
+		af = AF_INET;
+		break;
+	case NVMF_ADDR_FAMILY_IP6:
+		af = AF_INET6;
+		break;
+	default:
+		pr_err("address family %d not supported\n",
+				nport->disc_addr.adrfam);
+		ret = -EINVAL;
+		goto out_free_port;
+	}
+
+	ret = inet_pton_with_scope(&init_net, af, nport->disc_addr.traddr,
+			nport->disc_addr.trsvcid, &port->addr);
+	if (ret) {
+		pr_err("malformed ip/port passed: %s:%s\n",
+			nport->disc_addr.traddr, nport->disc_addr.trsvcid);
+		goto out_free_port;
+	}
+
+	if (nport->inline_data_size < 0) {
+		nport->inline_data_size = NVMET_RDMA_DEFAULT_INLINE_DATA_SIZE;
+	} else if (nport->inline_data_size > NVMET_RDMA_MAX_INLINE_DATA_SIZE) {
+		pr_warn("inline_data_size %u is too large, reducing to %u\n",
+			nport->inline_data_size,
+			NVMET_RDMA_MAX_INLINE_DATA_SIZE);
+		nport->inline_data_size = NVMET_RDMA_MAX_INLINE_DATA_SIZE;
+	}
+
+	ret = nvmet_rdma_enable_port(port);
+	if(ret)
+		goto out_free_port;
+
+	nvmet_rdma_init_tsas(nport);
+
+	pr_info("enabling port %d (%pISpcs)\n",
+		le16_to_cpu(nport->disc_addr.portid),
+		(struct sockaddr *)&port->addr);
+
+	return 0;
+
+out_free_port:
+	kfree(port);
+	return ret;
+}
+
+static void nvmet_rdma_remove_port(struct nvmet_port *nport)
+{
+	struct nvmet_rdma_port *port = nport->priv;
+
+	cancel_delayed_work_sync(&port->repair_work);
+	nvmet_rdma_disable_port(port);
+	kfree(port);
 }
 
 static void nvmet_rdma_disc_port_addr(struct nvmet_req *req,
-		struct nvmet_port *port, char *traddr)
+		struct nvmet_port *nport, char *traddr)
 {
-	struct rdma_cm_id *cm_id = port->priv;
+	struct nvmet_rdma_port *port = nport->priv;
+	struct rdma_cm_id *cm_id = port->cm_id;
 
 	if (inet_addr_is_any((struct sockaddr *)&cm_id->route.addr.src_addr)) {
 		struct nvmet_rdma_rsp *rsp =
@@ -1607,7 +1669,7 @@ static void nvmet_rdma_disc_port_addr(struct nvmet_req *req,
 
 		sprintf(traddr, "%pISc", addr);
 	} else {
-		memcpy(traddr, port->disc_addr.traddr, NVMF_TRADDR_SIZE);
+		memcpy(traddr, nport->disc_addr.traddr, NVMF_TRADDR_SIZE);
 	}
 }
 
-- 
2.17.1


--------------D024FDC045BE49C9A5A8BDF1
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--------------D024FDC045BE49C9A5A8BDF1--

