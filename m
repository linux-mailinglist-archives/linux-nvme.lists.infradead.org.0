Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 980E263D3A
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 23:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rze0eKoo43ICY8c8uIa8Yoi1+tf0U/33Y5X+6gUuZQ4=; b=AjEzafcfZNOFV+
	nHC9e/Y3TMdBet6zsHT7JusTLSvY0HWbDNYdw/DvIcUtHYIlempdn4nwJdXsoUgHjJvm6VvWTXZHp
	eKIopxrCcKc4Vx8rQCpB0YXgXk1S/q1Ls0hlYnKon8KqC3TL1uvGDVS+R8twwM8v4QRPf8oHnFplW
	5D40/DIx/ka5oujhRTZsL95HhnbVMqUQa3PgaPKsZHTnpzGJTMe27Xqb24Gbi23ryoaSQqPfJEQ/e
	nNZNx3SSRYjqXNwUcEUZjMVBXW2lUiWor4+Tqk9z/ELptx9fuPvltFjanO/uJf0DuYb1UuvGD/62Y
	C2bQp6CeWY9USu9u3NdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkxYq-00074U-JK; Tue, 09 Jul 2019 21:22:04 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkxYg-00074B-VV
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 21:21:56 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B725868B02; Tue,  9 Jul 2019 23:21:53 +0200 (CEST)
Date: Tue, 9 Jul 2019 23:21:53 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Subject: Re: [PATCH v2 2/2] nvme-tcp: don't use sendpage for SLAB pages
Message-ID: <20190709212153.GD9518@lst.de>
References: <cover.1562586804.git.mskorzhinskiy@solarflare.com>
 <3206ec8102d4dae933f4638652e84349dcc50ee4.1562586804.git.mskorzhinskiy@solarflare.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3206ec8102d4dae933f4638652e84349dcc50ee4.1562586804.git.mskorzhinskiy@solarflare.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_142155_169490_B17A2712 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jul 08, 2019 at 12:31:29PM +0200, Mikhail Skorzhinskii wrote:
> This change prevents sendpage calls for payload sending too, although this
> is true only for admin commands, so actual data transfer performance
> should be untouched.

XFS can also send slab pages for data.

I've applied to patch to nvme-5.3, but removed the above sentence
from the commit log.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
