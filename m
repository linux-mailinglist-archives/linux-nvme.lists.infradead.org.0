Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B76239EE
	for <lists+linux-nvme@lfdr.de>; Mon, 20 May 2019 16:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wp6h3iA270hBJir5NFznlwJZpjkdTJWclDZwoaZ6+Q8=; b=QxzvVho94U/Icn
	V4/Eqsp2RHkf516pn7RL3xNtCjXJpgqA3/X7XM1AOT7m9lbZ3OxYeyqK7NcRDvERupW55M4p+Qt7E
	lEEqCnBofzjdngJrTRq4OPsAOGnugc+5ytA6JXGIVuWefVT0vAwiS0aKt/CPb7RIZ4adsxADBXj53
	jp8JpOcmVNKcSEJz5A1GrZUklNgispCFkLYRCODTQhjz+DpzmV8ryLhTra5aXA8xLajYq0g19nnqV
	FiaXDdjmEjWopBazsvJ7CL2tfdy9YnsxrRREbnPGlDRjxjok0dBFXshb0Dtq1K7Qfy9OaD+iAf3hW
	GBhJg90WjAUL6Shvcgwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjG9-0006UD-S1; Mon, 20 May 2019 14:27:25 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hSjG3-0006Ti-Lt; Mon, 20 May 2019 14:27:19 +0000
Date: Mon, 20 May 2019 07:27:19 -0700
From: 'Christoph Hellwig' <hch@infradead.org>
To: kanchan <joshi.k@samsung.com>
Subject: Re: [PATCH v5 0/7] Extend write-hint framework, and add write-hint
 for Ext4 journal
Message-ID: <20190520142719.GA15705@infradead.org>
References: <CGME20190425112347epcas2p1f7be48b8f0d2203252b8c9dd510c1b61@epcas2p1.samsung.com>
 <1556191202-3245-1-git-send-email-joshi.k@samsung.com>
 <20190510170249.GA26907@infradead.org>
 <00fb01d50c71$dd358e50$97a0aaf0$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00fb01d50c71$dd358e50$97a0aaf0$@samsung.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, anshul@samsung.com, linux-fsdevel@vger.kernel.org,
 prakash.v@samsung.com, linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 11:01:55AM +0530, kanchan wrote:
> Sorry but can you please elaborate the issue? I do not get what is being
> statically allocated which was globally available earlier.
> If you are referring to nvme driver,  available streams at subsystem level
> are being reflected for all namespaces. This is same as earlier. 
> There is no attempt to explicitly allocate (using dir-receive) or reserve
> streams for any namespace.  
> Streams will continue to get allocated/released implicitly as and when
> writes (with stream id) arrive.

We have made a concious decision that we do not want to expose streams
as an awkward not fish not flesh interface, but instead life time hints.

I see no reason to change from and burden the whole streams complexity
on other in-kernel callers.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
