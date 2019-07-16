Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD1D6A8A3
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 14:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sfgax86Xdjhrk9b17vIVig+uh3T8lL6VV5WhDpkUVdk=; b=YTxi1DyD2qZqvE
	oK6orpVSwVcFYkJcJ+8NyCtURwrjoxUMNPGAEhTQboemoZUMfwWw7vkoKU0+knZs0WQVyeyquPhzY
	tNC5xAG5WQOyRrL9/w5tz8mL1DtRQgq+9/7V/QLEyIhH93gSCnqkZhdULtj8sQotSO+5NlJwDruQs
	rnOP/m7gHrVgMWGcxO+3LMIWX6Qs7LWOSQQUwSBCUmZ4WYmzoA3La4Yw7FxXdaRSiPUXLgmf04n35
	SvzqXp8w8vI5MtcMiWWZfTPhyGZ2dRmg8erFqYnifSJxTtrShcPKCcJA1kQU0nnrnEtgZxc+KPWRT
	n9yCbUYaMUOtXwFXF/KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMWE-0002f3-OQ; Tue, 16 Jul 2019 12:25:18 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnMW6-0002Xs-NC
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 12:25:11 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 58470227A81; Tue, 16 Jul 2019 14:25:08 +0200 (CEST)
Date: Tue, 16 Jul 2019 14:25:08 +0200
From: Christoph Hellwig <hch@lst.de>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH 2/3] nvme: Retrieve the required IO queue entry size
 from the controller
Message-ID: <20190716122508.GA3304@lst.de>
References: <20190716004649.17799-1-benh@kernel.crashing.org>
 <20190716004649.17799-2-benh@kernel.crashing.org>
 <20190716060430.GB29414@lst.de>
 <ad18ff8d004225e102076f8e1fb617916617f337.camel@kernel.crashing.org>
 <20190716093301.GA32562@lst.de>
 <bfbc7352951d1adc714f699acb49e298c24fe7e3.camel@kernel.crashing.org>
 <20190716120547.GA2388@lst.de>
 <cca6fd560aa1688ca94fc270310a91ccda9aed06.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cca6fd560aa1688ca94fc270310a91ccda9aed06.camel@kernel.crashing.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_052510_915516_AAE892EA 
X-CRM114-Status: UNSURE (   6.63  )
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
Cc: linux-kernel@vger.kernel.org, Paul Pawlowski <paul@mrarm.io>,
 Jens Axboe <axboe@fb.com>, linux-nvme@lists.infradead.org,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 10:17:56PM +1000, Benjamin Herrenschmidt wrote:
> If we're going to do that, then I can move it back to pci.c and leave
> core.c alone then I suppose. Up to you. I'm just doing that for fun, no
> beef in that game :-) let me know how you want it.

Sounds safest to me.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
