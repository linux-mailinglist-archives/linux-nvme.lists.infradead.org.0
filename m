Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A97E93B
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Apr 2019 19:35:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8E8hvh3XYq5nzVA6LjH/jos+POvpetiF8PCv22TYv1w=; b=CUj4Q899TTqP/w
	B2NhAh+/KLRmLWrk5UF6ECivTDd7I6VSaBxVHYXnMJVBPzJGItzYkU3X6ob2U2T7IyIqbccB4eOks
	xtt/dU6qDnyyHBbKnFHt/XF/evyj8SE3MdnimTCE+4fV2CnfmQgDgr23nbx3eIOP53/dQ1aqkWHhj
	/f59iD8cd7RPYFVh+tBOUyiSrN0Y8lTZZf6g28lfN5MJ0N6KMpQgIVHCIv7yEHCrB6Z+QecgrynSk
	UVRLnd2scQjLPTWgr2cHIIL2+24S8WjyNsF/WB44sZlvOuUOmv+RYeIviFcrMip3qaR5qnr6uT5HE
	sBp1pFCVBEpvFADKtKKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLABv-0003WW-BV; Mon, 29 Apr 2019 17:35:47 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLABj-0003O5-Ae
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 17:35:36 +0000
Received: from localhost.corp.microsoft.com (unknown [167.220.2.135])
 by linux.microsoft.com (Postfix) with ESMTPSA id 2ECB232376D7;
 Mon, 29 Apr 2019 10:35:34 -0700 (PDT)
From: Edmund Nadolski <ednadols@linux.microsoft.com>
To: linux-nvme@lists.infradead.org,
	ednadols@linux.microsoft.com
Subject: [PATCH 0/2] nvme: some cleanup
Date: Mon, 29 Apr 2019 10:35:31 -0700
Message-Id: <20190429173533.10366-1-ednadols@linux.microsoft.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_103535_409129_C24C69CB 
X-CRM114-Status: UNSURE (   5.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This series clarifies the code by adding some macros, comments,
and fixing a few miscellaneous typos.

Edmund Nadolski (2):
  nvme: nvme_set_queue_count should use descriptive macros
  nvme: add clarifying comments and fix some typos

 drivers/nvme/host/core.c |  8 ++++++--
 drivers/nvme/host/nvme.h | 32 ++++++++++++++++----------------
 drivers/nvme/host/pci.c  |  2 +-
 3 files changed, 23 insertions(+), 19 deletions(-)

-- 
2.20.1

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
