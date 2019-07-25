Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BEB757EA
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 21:32:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0i6BpqkMSNc2tYFZk8PpH5N9ZWU31WRD8+bAaRC3elg=; b=WqmuMjtD0aABP6
	PT5Qo+xX5Vlz8aeuQgkA7tTJp9zh7yrP2L8fqa6G6AwgIMAk8EjI3dNemY6QMucD4Ddxls8gKSQ8r
	e47pkPqw6exFlEUjw/P6QgBl3aHYLtPBMBiv3l4aeBBVoivYlDIkXNL7esmBQnYKY0O4iGGvKAjOc
	3PHGTw7vf31TQ8tkfN5PHNEMV/mI4KvkhJht7jV2Bk39RdtZlApPVgg5EPcHDH5iLVUI34i9drazw
	xRiYwWsUFoKWbpwOsKSCXUb29qH+Y1O6BBvabelCWDidllCVZ6eUsJZykh04L+iEGn11cb5jNTHev
	a+0JALXBIQfZ7V/4UEdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjSy-00050e-TU; Thu, 25 Jul 2019 19:31:52 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjSa-0004qD-WF
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 19:31:30 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqjSU-00040j-4r; Thu, 25 Jul 2019 13:31:22 -0600
To: Matthew Wilcox <willy@infradead.org>
References: <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725180816.GA32305@kroah.com>
 <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
 <20190725182701.GA11547@kroah.com>
 <20190725190024.GD30641@bombadil.infradead.org>
 <27943e06-a503-162e-356b-abb9e106ab2e@grimberg.me>
 <20190725191124.GE30641@bombadil.infradead.org>
 <425dd2ac-333d-a8c4-ce49-870c8dadf436@deltatee.com>
 <20190725192613.GF30641@bombadil.infradead.org>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <a4bb9e66-9165-3557-ae43-02a916b4fa0e@deltatee.com>
Date: Thu, 25 Jul 2019 13:31:20 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725192613.GF30641@bombadil.infradead.org>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: hch@lst.de, maxg@mellanox.com, linux-fsdevel@vger.kernel.org,
 viro@zeniv.linux.org.uk, kbusch@kernel.org, linux-block@vger.kernel.org,
 sbates@raithlin.com, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, Chaitanya.Kulkarni@wdc.com, axboe@fb.com,
 gregkh@linuxfoundation.org, sagi@grimberg.me, willy@infradead.org
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_123129_192997_631F8B09 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-block@vger.kernel.org, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 Jens Axboe <axboe@fb.com>, linux-fsdevel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-25 1:26 p.m., Matthew Wilcox wrote:
> On Thu, Jul 25, 2019 at 01:24:22PM -0600, Logan Gunthorpe wrote:
>>>> Assuming that there is a open handle somewhere out there...
>>
>> Yes, that would be a step backwards from an interface. The user would
>> then need a special process to open the fd and pass it through configfs.
>> They couldn't just do it with basic bash commands.
> 
> echo 3 3</dev/nvme3 >/configfs/foor/bar/whatever

Neat. I didn't know you could do that.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
