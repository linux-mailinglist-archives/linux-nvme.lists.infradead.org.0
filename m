Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D8469870
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 17:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aFQtIDj7YVACcpJH37hqhuEE47mXh+Ef0zDWOBVRbCY=; b=J9pmJIwarMgw5w
	dW2Mk2Rq0UHfzKXQYbtupvhh3gMajuwYfni3fr8HyK6hLSzNb0flY51Tpu5/kS8TpITKGOgdfE4TS
	C+vwHuvScKpsP5p0auoyulraNlQJBqUJTTUVxs80qrtx1kkGqIiKsp8utNg/EXsRleKCP77x+9ZxQ
	JFY5E2dChlCk3mo1YX0T1ztFB6clQrucu+jmiEsZZNTp9b3kyMtFUESRboJcUSBqz82XJ8GH0/P/W
	tGYo6rJz3g5Hapevt0tRk5HzViOagQF5aarjYYCW6PXQ7dHUuQWWnP85LgpJ9flN2Q7LjIidbBKGX
	JAHEA0bd0I9HqrFvEbpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn367-0000sH-EZ; Mon, 15 Jul 2019 15:41:03 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn361-0000q8-24
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 15:40:58 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hn35q-00066X-Pe; Mon, 15 Jul 2019 09:40:47 -0600
To: Johannes Thumshirn <jthumshirn@suse.de>
References: <20190712235742.22646-1-logang@deltatee.com>
 <20190712235742.22646-8-logang@deltatee.com> <20190715071522.GB4495@x250>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <e1008f94-1cb7-8619-bbdd-802968e9402d@deltatee.com>
Date: Mon, 15 Jul 2019 09:40:39 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715071522.GB4495@x250>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: sbates@raithlin.com, tytso@mit.edu, mmoese@suse.de,
 chaitanya.kulkarni@wdc.com, osandov@fb.com, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, jthumshirn@suse.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH blktests 07/12] nvme/018: Ignore error message generated
 by nvme read]
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_084057_471412_FE93243A 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
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



On 2019-07-15 1:15 a.m., Johannes Thumshirn wrote:
> On Fri, Jul 12, 2019 at 05:57:37PM -0600, Logan Gunthorpe wrote:
>> nvme-cli at some point started printing the error message:
>>
>>   NVMe status: CAP_EXCEEDED: The execution of the command has caused the
>> 	capacity of the namespace to be exceeded(0x6081)
>>
>> This was not accounted for by test 018 and caused it to fail.
>>
>> This test does not need to test the error message content, it's
>> only important that a read past the end of the file fails. Therefore,
>> pipe stderr of nvme-cli to /dev/null.
> 
> How about redirecting all of the output to $FULL?

Sure, I'll update it and send a v2.

Logan


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
