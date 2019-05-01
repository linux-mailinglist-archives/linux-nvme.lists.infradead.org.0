Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A511D10838
	for <lists+linux-nvme@lfdr.de>; Wed,  1 May 2019 15:18:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qEBDrSTlKzeqhKWtbmgXDiw/qLrvAqRKV1e/rMtB/ps=; b=lSX8j6JSs+9EYU
	rmKXkHaAh2MiVXX+n09hBR6oh3NhDbG0alNnxitYYI6xzHmN/tJWH20sYfNvYbtfiAM1jb20oLszi
	cRIP4UJB0g8y70KEVbfcaNE7uI+qBzMj+xwUdfvoksBt/dKZp3zYFKGrQTSZPE526t7SzqOFfh6hA
	43WYkwM7boterChg5mcKI0blBH8Tbd+kZ1hLJSYNfrEzHFuj1ZLZAEKk9LrNe7TI+RtHB3vTFtIsX
	QuPG75H6XjhJtewsrZRAjPpkpViNpMgaWjhvurL+xz3I25qFm3R3IVLdj5dLHMbWbyeL1LYZCCu3c
	LlGTP3Zc501Q6qT0fpEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLp8M-0005EB-3R; Wed, 01 May 2019 13:18:50 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLp8F-0005Dm-5a
 for linux-nvme@lists.infradead.org; Wed, 01 May 2019 13:18:44 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id DD12D68AFE; Wed,  1 May 2019 15:18:21 +0200 (CEST)
Date: Wed, 1 May 2019 15:18:21 +0200
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH 1/2] nvme: move command size checks to the core
Message-ID: <20190501131821.GA1402@lst.de>
References: <20190430153833.9011-1-hch@lst.de>
 <SN6PR04MB45274A0053D67600108FA903863A0@SN6PR04MB4527.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR04MB45274A0053D67600108FA903863A0@SN6PR04MB4527.namprd04.prod.outlook.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_061843_363332_4461CF02 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: "keith.busch@intel.com" <keith.busch@intel.com>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "sagi@grimberg.me" <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 09:30:26PM +0000, Chaitanya Kulkarni wrote:
> Looks good. Just one question about _nvme_check_size(), is there any 
> significance for one _ over __ ?

None.  I have just copied over what we had before.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
