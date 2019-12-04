Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416651124EF
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Dec 2019 09:29:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SB5ePXyVe+R7Do2w9cpXaJfg4kyRavDHRUEnTMNkGQU=; b=H9jrh1dyIU9Phd
	I1LNlU8P2ub6Tkb+epa0eOkmcNcLghDLEV9mDQ+luDckfbJ58XqYW+m3Q1fpvEUsny1XLIyjNBZUx
	o0rX9ooxHpBU+GoxzyUlStwViLP/6DJxry0Kd2AzUDBLY8LTfFV3NurdVe6At8WhoAlYgLJbkOVI4
	BdgJ5KL3wlscRxrRrnkgd9j1M+FqtBrwctd9NUi9nWsVynQXFSOg7oC2Qu1X570TTZ034UX7TrRa4
	vrcYIoE4cOEx2JGWgzHgtmMkPTSNemBSagTfh1B/U0RsTTIb5YAEEIop1Z+jNjv3Rxh1uK6339+CC
	2LI1bU6BFRDZpm3bs23A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQ1p-0007af-6T; Wed, 04 Dec 2019 08:28:57 +0000
Received: from ip-12-0-68-226-us.kioxia.com ([12.0.68.226]
 helo=SJSMAIL01.us.kioxia.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQ1j-0007aI-6S
 for linux-nvme@lists.infradead.org; Wed, 04 Dec 2019 08:28:53 +0000
Received: from SJSMAIL01.us.kioxia.com (10.90.133.90) by
 SJSMAIL01.us.kioxia.com (10.90.133.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 4 Dec 2019 00:28:49 -0800
Received: from SJSMAIL01.us.kioxia.com ([fe80::8056:cf5f:fb1f:e123]) by
 SJSMAIL01.us.kioxia.com ([fe80::8056:cf5f:fb1f:e123%3]) with mapi id
 15.01.1779.004; Wed, 4 Dec 2019 00:28:49 -0800
From: Victor Gladkov <Victor.Gladkov@kioxia.com>
To: James Smart <james.smart@broadcom.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: RE: [PATCH] nvme-fabrics: reject I/O to offline device
Thread-Topic: [PATCH] nvme-fabrics: reject I/O to offline device
Thread-Index: AdWoHEM2hZCp1trGT5CqiIXVszcBJgBiTd2AAAZbKjAAHmVugAAOa+zg
Date: Wed, 4 Dec 2019 08:28:49 +0000
Message-ID: <ac9b5d7192fb49ac9bdf19dd35be0ab2@kioxia.com>
References: <2caa40133c444771b706406b928ad88a@kioxia.com>
 <78d980de-b2b8-bd47-fc3f-20314653598e@broadcom.com>
 <c625b332ee124b038da1ae59b02f4e21@kioxia.com>
 <9a73a895-7d6b-21e9-9008-816117be1ff4@broadcom.com>
In-Reply-To: <9a73a895-7d6b-21e9-9008-816117be1ff4@broadcom.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.93.66.127]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_002851_236684_F55113C0 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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

On 12/03/2019 06:19 PM, James Smart wrote:
> On 12/3/2019 2:04 AM, Victor Gladkov wrote:
> > On 12/03/2019 00:47 AM, James Smart wrote:
> >> O
> >> The controller-loss-timeout should not affect IO timeout policy, these are
> two different policies.

> 
> Ok - which says what does make sense to add is the portion:
> 
>    !(ctrl->state == NVME_CTRL_CONNECTING && ((ktime_get_ns() - rq->start_time_ns) > jiffies_to_nsecs(rq->timeout)))
> 
> 
> But I don't think we need the failfast flag.
> 
> -- james

OK. I think, it's good enough.

This is updated patch:

---
diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
index 74b8818..b58abc1 100644
--- a/drivers/nvme/host/fabrics.c
+++ b/drivers/nvme/host/fabrics.c
@@ -549,6 +549,8 @@ blk_status_t nvmf_fail_nonready_command(struct nvme_ctrl *ctrl,
 {
        if (ctrl->state != NVME_CTRL_DELETING &&
            ctrl->state != NVME_CTRL_DEAD &&
+           !(ctrl->state == NVME_CTRL_CONNECTING &&
+            ((ktime_get_ns() - rq->start_time_ns) > jiffies_to_nsecs(rq->timeout))) &&
            !blk_noretry_request(rq) && !(rq->cmd_flags & REQ_NVME_MPATH))
                return BLK_STS_RESOURCE;

---

Regards,
Victor
_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
