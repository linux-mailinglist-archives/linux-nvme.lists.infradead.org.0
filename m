Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C99B1FC84C
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jun 2020 10:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mx2DCQ1qGRenEo1Z0ECb3zqSyhxrACM30V/n4F807ak=; b=YcxjeJcBn9i1uw
	QIfIIfbOVcje/YnNtDHOkZi4hW19fOtxHIWbmEDPu2inZ6DeRBe7lTddUqMSGod6fFlXY88ETpM4L
	VA5vmXpuSVIBSCDs5Yti+hcGiEyZ+DW5WskwkNUkt5wQlx0Eh2tVkX7U4zA7w9KloINpGt0Hl/Jvs
	8+DxMwLPW5pasu9dH+RD1HPJzDqf2P/ttn0DmwEX1MM9K3I4ZsuoQgv+SRC4VgdKJZ8qZxwBh/KVt
	7j5aXKYBfOwUuz0EjBI3cA620VfDrof8Ssm5jopb5JMLkVIKPevYhwZiKOgqekbV1piFBULOL/5hx
	asobrKXAbzSYc2/93hOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlT6O-0005iz-OE; Wed, 17 Jun 2020 08:07:20 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlT6B-0005g8-Tp
 for linux-nvme@lists.infradead.org; Wed, 17 Jun 2020 08:07:12 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E3F5368AEF; Wed, 17 Jun 2020 10:07:05 +0200 (CEST)
Date: Wed, 17 Jun 2020 10:07:05 +0200
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvmet: use unsigned type for u64
Message-ID: <20200617080705.GC14863@lst.de>
References: <20200612011659.11247-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612011659.11247-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_010708_119976_08A8DB1D 
X-CRM114-Status: UNSURE (   6.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 06:16:59PM -0700, Chaitanya Kulkarni wrote:
> In function nvmet_subsys_atte_version_show() which uses the NVME_XXX()
> macros related to version (of type u64) get rid of the int type cast
> when printing subsys version and use appropriate format specifier for
> u64.

Applied to nvme-5.9.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
