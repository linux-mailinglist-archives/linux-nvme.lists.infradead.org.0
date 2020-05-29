Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4221E80B1
	for <lists+linux-nvme@lfdr.de>; Fri, 29 May 2020 16:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHSGsSq8PeXVKtgA71lDJ9b0nR8aAWOjDlg5Sq3r1jk=; b=i8gLzGkIjw2NbP
	UXIsk8CHkADYOpRmWxgoOclcbW4bPxrIDFqLmhMndUQCFw9vP2aGfl0gBq6xsuYQIxSiU127qk5L/
	KIyYCZNlC4RpG+Y/SRmC1LUR5Jm2AK0g0SWq/nv1CG0Iq55GyTUDHZlKM+Qy8sqpSljFYocKiIqGn
	QMKKDdTYcfN2g9EFlThu0BZqWq0etWAAfSax/pzpL4FaEDNnBRZ/1yVM9Gf+xYmDMjDCVB8ZpJCpO
	I6Ww+Sl9+X5ov+5KqcOksNtc+Ee6pH1zKmakQ/m7Fh4ABOcOqD+jJQuuVqqVHVlNzF12LbK91SLTp
	K2cc/8QgSEXORe/HVgTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jegCQ-00071N-Ai; Fri, 29 May 2020 14:41:30 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jegCL-000704-1R
 for linux-nvme@lists.infradead.org; Fri, 29 May 2020 14:41:26 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B6DA768BFE; Fri, 29 May 2020 16:41:21 +0200 (CEST)
Date: Fri, 29 May 2020 16:41:21 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv3 1/2] blk-mq: export blk_mq_force_complete_rq
Message-ID: <20200529144121.GA4987@lst.de>
References: <20200529143744.3545429-1-kbusch@kernel.org>
 <20200529143744.3545429-2-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529143744.3545429-2-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_074125_231868_80D5FA2C 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: axboe@kernel.dk, sagi@grimberg.me, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, alan.adamson@oracle.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 07:37:43AM -0700, Keith Busch wrote:
> For when drivers have a need to bypass error injection.

The subject doesn't quite match the content, and the commit log in
general could be a little more verbose.  The changes itself look
fine to me.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
