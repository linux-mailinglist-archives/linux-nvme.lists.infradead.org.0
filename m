Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC7E6D16E
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jul 2019 17:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rDhdQRRnwSOEIa3LbePiwcKaTJoibQZIl80BD4kAvgQ=; b=Mrqe7oYsHDtbo+
	9oCtsrFd5iOFHX+0cvJpfBvhXbgSw+Dw9ShLtczzg/JHzNGokad0NTD5j+sarq1zFvCKIxGwDe54U
	8xrSecShhSKgUGAVuKP9+34qkTxQ0mkDl/duuH89O3+BHqbTlJHNJKcWCUq2HlG11ab6/YzPNetpW
	z55m9KVHXM0+IACero34/K7jN7g0f/kyve1+3iCq+CM2HnJlOVaZzN8QrfHzlHPH42wHoJ4zvLy5A
	yvSGWUPLEoyh7uU3lYJUdMNhnHXw/HR15XFv1k7k8wWSz60YP9sce3HzxdzbbCTnQo3pEhASQdmj/
	kY+if0d7+X4shkWyXGRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho8kn-0003p2-RJ; Thu, 18 Jul 2019 15:55:33 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho8ka-0003oS-4c
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 15:55:21 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1ho8kS-0003pV-83; Thu, 18 Jul 2019 09:55:13 -0600
To: Johannes Thumshirn <jthumshirn@suse.de>
References: <20190717171259.3311-1-logang@deltatee.com>
 <20190717171259.3311-4-logang@deltatee.com>
 <20190718070330.GC15760@x250.microfocus.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <1c81c160-7c32-7a88-53ae-ea54030b8d19@deltatee.com>
Date: Thu, 18 Jul 2019 09:55:09 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190718070330.GC15760@x250.microfocus.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, tytso@mit.edu, mmoese@suse.de,
 chaitanya.kulkarni@wdc.com, osandov@fb.com, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, jthumshirn@suse.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH blktests v2 03/12] nvme: Add new test to verify the
 generation counter
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_085520_545228_19D775C0 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Theodore Ts'o <tytso@mit.edu>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Omar Sandoval <osandov@fb.com>,
 Michael Moese <mmoese@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-18 1:03 a.m., Johannes Thumshirn wrote:
> On Wed, Jul 17, 2019 at 11:12:50AM -0600, Logan Gunthorpe wrote:
> [...]
>> +_discovery_genctr() {
>> +	nvme discover -t loop |
>> +		sed -n -e 's/^.*Generation counter \([0-9]\+\).*$/\1/p'
>> +}
> 
> Sorry for not having spotted this in v1, but do we really want to hard-core
> the transport type in a library function?

My opinion is that this is unnecessary until we have users of the
function that need different transport types. It's easy enough for
someone to change when they need it. It's a pretty standard practice in
kernel development to not add a feature that no-one uses.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
