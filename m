Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1533510092
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 22:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fPdar65lI1ePXgXb5g42DOtWd91hGus1bYD+QR+pAj8=; b=STCHs/AgyoBGnc
	Lo2P/QsJ0NZKhGweaRtnUNgjfqvbsrq3sMKqpx/QnqmUCZacXwjmztXkRQl5sZUJWTTEmPyHZTnLY
	qhR+NTg8TW7KlF/gmUdXltgIb2olReXTPYHNfYRj8EKiZBttQGNFbKom6RaHLoLsouj8289Qr56Kl
	hs+v9ktX5eI+06w1Nd5NE0URNQOogOmzYs0zEsU5v1TjMRvyAQ93PocOoU0I2U1e8h83DCDDuPp8O
	MRgh9GfMPFV9/SPeL5KUBg5bR+8E+hpXv+y+RsxTvoGWuYWrIwtxmR+4W+PGWUR0EtVWeofMZK4Rh
	arevEChvbJ+jnOj0P3rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLZ3v-00032V-Py; Tue, 30 Apr 2019 20:09:11 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLZ3q-00031Y-VZ
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 20:09:08 +0000
Received: from localhost.corp.microsoft.com (unknown [167.220.2.135])
 by linux.microsoft.com (Postfix) with ESMTPSA id A28983022B50
 for <linux-nvme@lists.infradead.org>; Tue, 30 Apr 2019 13:09:05 -0700 (PDT)
From: Edmund Nadolski <ednadols@linux.microsoft.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 0/2] nvme: some cleanup
Date: Tue, 30 Apr 2019 13:09:03 -0700
Message-Id: <20190430200905.28341-1-ednadols@linux.microsoft.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_130907_033852_F49F6DF4 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

This series clarifies the code intent by adding some macros and fixing
a few miscellaneous typos.

v2 changes:
 - Move typo fixes into separate patch.
 - Drop struct member comments.
 - Clarify changelog remarks.

Edmund Nadolski (2):
  nvme: nvme_set_queue_count should use descriptive macros
  nvme: fix some typos

 drivers/nvme/host/core.c | 8 ++++++--
 drivers/nvme/host/nvme.h | 2 +-
 drivers/nvme/host/pci.c  | 2 +-
 3 files changed, 8 insertions(+), 4 deletions(-)

-- 
2.20.1

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
