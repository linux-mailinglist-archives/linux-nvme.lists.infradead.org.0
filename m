Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 046A71345A0
	for <lists+linux-nvme@lfdr.de>; Wed,  8 Jan 2020 16:04:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YegjeLynRVlPNM29NCNQ5230I0a4SmNNOi97KVRR6Z0=; b=o0aGAl9aolzzR0
	HnSTl3tBzSDojGM0wI1XaexCo1wYyv3xTpDU6sKvP7kJpEOY6C59d6u791j7PkfDwsTi8kHlkhKsf
	16BMKbkU+kSU5rg1UF9VCt3gqWYVAYXynSYDrP8WKHBueGA9G6WLKJJo8tVaAsX4UN0oPTqUpRuYp
	Bvi09VsEraQCmpxCbrDXMqdy+3ujsOviEfBGz1gorlA+lfUgpURj5LO/xaF7JtpmQpGkvKeRcXMqs
	YEkiQym+UUc8HbJ+KmDvbTPdC5/imH3kugB+vVhf9GoStF+LINV/eILRIgDez/AFT5zNPpg1sQbpa
	PniSuK7BC/WPdwMH+AwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipCsu-0006rJ-FT; Wed, 08 Jan 2020 15:04:36 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipCso-0006qv-4C
 for linux-nvme@lists.infradead.org; Wed, 08 Jan 2020 15:04:31 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4526468BFE; Wed,  8 Jan 2020 16:04:28 +0100 (CET)
Date: Wed, 8 Jan 2020 16:04:28 +0100
From: "hch@lst.de" <hch@lst.de>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: Re: [resend v1 1/5] block/genhd: Notify udev about capacity change
Message-ID: <20200108150428.GB10975@lst.de>
References: <20200102075315.22652-1-sblbir@amazon.com>
 <20200102075315.22652-2-sblbir@amazon.com> <yq1ftgs2b6g.fsf@oracle.com>
 <d1635bae908b59fb4fd7de7c90ffbd5b73de7542.camel@amazon.com>
 <yq17e221vvt.fsf@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq17e221vvt.fsf@oracle.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_070430_320608_959A2BBE 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 "Chaitanya.Kulkarni@wdc.com" <Chaitanya.Kulkarni@wdc.com>,
 "mst@redhat.com" <mst@redhat.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "Sangaraju,
 Someswarudu" <ssomesh@amazon.com>, "Singh, Balbir" <sblbir@amazon.com>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 10:15:34PM -0500, Martin K. Petersen wrote:
> 
> Balbir,
> 
> > I did this to avoid having to enforce that set_capacity() implied a
> > notification. Largely to control the impact of the change by default.
> 
> What I thought. I'm OK with set_capacity_and_notify(), btw.

To some extent it might make sense to always notify from set_capacity
and have a set_capacity_nonotify if we don't want to notify, as in
general we probably should notify unless we have a good reason not to.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
