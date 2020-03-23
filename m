Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DD118F04F
	for <lists+linux-nvme@lfdr.de>; Mon, 23 Mar 2020 08:35:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nod3M/snp5Luc/8TFcMbEYWM1n+1Yu81VNy8MvdQotM=; b=hsUrDrkaw2/M8N
	EhIp3fKRUGBRDN7hqh+rxBfPv4dnVB/A86uG/pMyWhVt3h66+3dRQLcKf3UTFDwT4WrxASqFlfi2J
	DBt1hJNv8uuujJNRvos6pcA7alOovbr/T+4qx9LNldMt2up7D1dRzThtyJPPgfoIdG9JSXIt8okxf
	J8Ovaz/0mUvXSLhH7A2Rw1DC3bRJ0zy3SRXxoisXez8Qp9ustN+4N4y1IcWfCsZlbtkDLcPvHtxYN
	kojpnc8crd9HNMH/QL/VGyzKubvO3X6CRqBEvwNxraarOhr5h1ysEYwet/INPRNlHihE3eaA5XAyF
	GOucnmRxJe2q321kX3Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGHc6-0003TX-5H; Mon, 23 Mar 2020 07:35:10 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGHbr-0003S1-F9
 for linux-nvme@lists.infradead.org; Mon, 23 Mar 2020 07:34:58 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9210868BEB; Mon, 23 Mar 2020 08:34:53 +0100 (CET)
Date: Mon, 23 Mar 2020 08:34:53 +0100
From: Christoph Hellwig <hch@lst.de>
To: Israel Rukshin <israelr@mellanox.com>
Subject: Re: [PATCH 6/6] nvme-tcp: Add warning on state change failure at
 nvme_tcp_setup_ctrl
Message-ID: <20200323073453.GE30302@lst.de>
References: <1584899989-14623-1-git-send-email-israelr@mellanox.com>
 <1584899989-14623-7-git-send-email-israelr@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584899989-14623-7-git-send-email-israelr@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_003455_677345_9FF9E05F 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>,
 Sagi Grimberg <sagi@grimberg.me>, Linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Mar 22, 2020 at 07:59:49PM +0200, Israel Rukshin wrote:
> The transition to LIVE state should not fail in case of a new controller.
> Moving to DELETING state before nvme_tcp_create_ctrl() allocates all the
> resources may leads to NULL dereference at teardown flow (e.g., IO tagset,
> admin_q, connect_q).
> 
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
