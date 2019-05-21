Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7DF2487E
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 08:56:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bq3h+gXHGroay4xbrx8osPnJp1/hCJgaFwIBoyOMQDE=; b=Lz9AxXaI1rOt39
	eak28ZGEI2hhRnPZG2P2xcMKUQ4tTTt/tWpwKW1oBLjtzIpdcTWtLm5EMYS5KO6/9xmSoy8opRIip
	WzpgUPgPqp14O0XSEiHLQtsBYyMD+7EQd6QUrn6BDY1p3bTg9VlLpFBQluquuc6uTAZ6685AdwipZ
	NO+oeBGDJylYjrerlx1NVGzNIvjHdJPtZ2ZK1kyyk2u5NDWbOyPZtchZizyp2QhdSqVp4exmcrGcP
	MBwQd3hw+mKkM0HPE9Itu/OcvQZkUhkk9dIduSgOw++LN+355b/iAaNgiNc/GwFlSz3q0F+QMm/qx
	UlOtQapzzrXlGI1K3VJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSygx-0006F3-H9; Tue, 21 May 2019 06:56:07 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hSygs-0006Dl-FA; Tue, 21 May 2019 06:56:02 +0000
Date: Mon, 20 May 2019 23:56:02 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH RFC 0/4] nvmet: add support for port based io priority
Message-ID: <20190521065602.GA17946@infradead.org>
References: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
 <20190517094545.GA26412@infradead.org>
 <SN6PR04MB4527B78B40C2B1D11355FA9F860B0@SN6PR04MB4527.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR04MB4527B78B40C2B1D11355FA9F860B0@SN6PR04MB4527.namprd04.prod.outlook.com>
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
Cc: Christoph Hellwig <hch@infradead.org>,
 "jthumshirn@suse.de" <jthumshirn@suse.de>,
 "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 04:28:43PM +0000, Chaitanya Kulkarni wrote:
> Okay, thanks for the reply Christoph. Quick question, when you mention
> 
> "Until NVMe has an actually working priority" -> host side support for
> 
> priority based block layer request -> NVMe Request processing with
> 
> having weighted round robin priority SQ for NVMe Host  ?

Weighted round robing is _NOT_ and I/O priority - it just just changes
arbitration.  But there had been priority proposals in the working
group before, without much progress at the moment, though.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
