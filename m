Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F42C9DF2
	for <lists+linux-nvme@lfdr.de>; Thu,  3 Oct 2019 14:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PMtMig5iRJleOhNST7Sa97UiLheFTXVDpfmU1WZUlI=; b=CEiB/uQgtHX6DU
	fG32xQKln0vwRbq5UinKbk0O0JCdhpp0H2wtyK5Mb909RUoDwvw0VpPe601wP3OMtVll/sftfq/fS
	BtUEJUXS/Wc0yY7C8li6kOmSp1lnV1H/q7KVlF2CG09xpTktxweTKd/woTLvuNcOZyypy7h8K2UsY
	9YjoWCeI4T1Y1leaXiUh6T/8f8bW9Nt94Y6MoYE0tjoGo/Sh3fbRRkt6QBrsE3t9XJP+E+XaIGiy8
	Se7HiYnI9MApUqEXzIhC4h7XpgyODeclAsdswey+X5J9tUKN25ByFlGQPwoU9p3JTU96uzfKH8/uK
	KkmUL3zBmXGx+7l/8kmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFzpk-00046z-Hn; Thu, 03 Oct 2019 12:03:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFzpf-00046X-Kd
 for linux-nvme@lists.infradead.org; Thu, 03 Oct 2019 12:03:44 +0000
Received: from C02WT3WMHTD6.fritz.box (37-247-85-246.natip.skydsl.at
 [37.247.85.246])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D4AAA222C2;
 Thu,  3 Oct 2019 12:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570104223;
 bh=c30LHNYp4RGmgI8zkhPQpsyj3fxSJmQCqW6HYUUbtwc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cHwAeBZZ2IaBaazgcOOP9dcg8QcwGxXUOZ0OdRCTvhj6Zv+m5PVC8vgRyiQigKpvK
 5ENIKGdnoIxWlIfmharRUHsHshc0nLJll+X0oIwGEsETAaFAJPXa87KhTndcIaUHGY
 hqWJ/06xxTUI1ALItie+zsEZysUv5Y0X523NobQA=
Date: Thu, 3 Oct 2019 06:03:25 -0600
From: Keith Busch <kbusch@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [RFC PATCH] nvme: retain split access workaround for capability
 reads
Message-ID: <20191003120325.GB34459@C02WT3WMHTD6.fritz.box>
References: <20191002073643.5339-1-ard.biesheuvel@linaro.org>
 <20191003114901.GA34459@C02WT3WMHTD6.fritz.box>
 <CAKv+Gu_YCRwvtc=QSu0V2i1GESxHv9ndkqe0cyJsDaL6LQATDw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu_YCRwvtc=QSu0V2i1GESxHv9ndkqe0cyJsDaL6LQATDw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_050343_696298_B1796A02 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: axboe@fb.com, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 sagi@grimberg.me, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 01:51:03PM +0200, Ard Biesheuvel wrote:
> On Thu, 3 Oct 2019 at 13:49, Keith Busch <kbusch@kernel.org> wrote:
> > On Wed, Oct 02, 2019 at 09:36:43AM +0200, Ard Biesheuvel wrote:
> > > Broken since v5.3, so if this gets fixed one way or the other, please
> > > add cc: stable.
> >
> > Since 5.3?! 'git blame' says the code has been this way since 7fd8930f26be4,
> > which was from 2015 during the 4.4 development cycle.
> >
> 
> That may be true, but the box in question happily boots a v5.2 kernel.

Looks like your observation was introduced with c0f2f45be2976abe.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
