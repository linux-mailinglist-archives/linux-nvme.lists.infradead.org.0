Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3772021E9
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jun 2020 08:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FzZS9i9q74mfalIbdBq5MGZbBblwWKK4JbYIcrpuImI=; b=kvD8jE4CbiodRn
	A2SRUFIYyKeG4gBEYvFQWcFfhz0s9d4slcvLi3MLTr/pYzjwc5Z6OOEFBpisLUJbeqjDC0EI+dUYZ
	dTfXGEPOcvKJHJC0Je22usrXsYqcQ1LaH0YuwL216RQQhW9H6C/4uwCFncJNRCAwOEmvKTJCO7u01
	dSb9o8tZVyi0saLXgjeIKcvtC0Ux7k0ZcsjsIlFfjEbJDIZ/JAuszu0BuW2AWe1AxvCQHmltAjq8h
	H6+KoHeGmbGrpEmSC9weDzVcli1c+73LZg8ij+NhB5NCMWKZ3WyuhMtmb5lJUSyOXkv1vza/eIap4
	ALIJ8CQ/+EGzWRlXUVOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmX40-0003mB-Ao; Sat, 20 Jun 2020 06:33:16 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmX3v-0003kT-Oi
 for linux-nvme@lists.infradead.org; Sat, 20 Jun 2020 06:33:13 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0F3DD68CEC; Sat, 20 Jun 2020 08:33:02 +0200 (CEST)
Date: Sat, 20 Jun 2020 08:33:01 +0200
From: Christoph Hellwig <hch@lst.de>
To: Heiner Litz <hlitz@ucsc.edu>
Subject: Re: [PATCH 5/5] nvme: support for zoned namespaces
Message-ID: <20200620063301.GA2381@lst.de>
References: <20200617194013.3wlz2ajnb6iopd4k@mpHalley.local>
 <CAJbgVnVo53vLYHRixfQmukqFKKgzP5iPDwz87yanqKvSsYBvCg@mail.gmail.com>
 <20200618015526.GA1138429@dhcp-10-100-145-180.wdl.wdc.com>
 <CAJbgVnVKqDobpX8iwqRVeDqvmfdEd-uRzNFC2z5U03X9E3Pi_w@mail.gmail.com>
 <CY4PR04MB3751E6A6D6F04285CAB18514E79B0@CY4PR04MB3751.namprd04.prod.outlook.com>
 <CAJbgVnVnqGQiLx1PctDhAKkjLXRKFwr00tdTPJjkaXZDc+V6Bg@mail.gmail.com>
 <20200618211945.GA2347@C02WT3WMHTD6>
 <CAJbgVnVxtfs3m6HKJOQw4E1sqTQBmtF_P-D4aAZ5zsz4rQUXNA@mail.gmail.com>
 <MN2PR04MB62234880B3FDBD7F9B2229CCF1980@MN2PR04MB6223.namprd04.prod.outlook.com>
 <CAJbgVnUd3U3G=RjpcCuWO+HT9pBP3zasdQfG7h-+PEk0=n4npw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJbgVnUd3U3G=RjpcCuWO+HT9pBP3zasdQfG7h-+PEk0=n4npw@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_233311_948643_41DA5788 
X-CRM114-Status: UNSURE (   8.44  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Niklas Cassel <Niklas.Cassel@wdc.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, Ajay Joshi <Ajay.Joshi@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>, Keith Busch <Keith.Busch@wdc.com>,
 Dmitry Fomichev <Dmitry.Fomichev@wdc.com>,
 Aravind Ramesh <Aravind.Ramesh@wdc.com>,
 Javier =?iso-8859-1?Q?Gonz=E1lez?= <javier@javigon.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Hans Holmberg <Hans.Holmberg@wdc.com>, Keith Busch <kbusch@kernel.org>,
 Matias =?iso-8859-1?Q?Bj=F8rling?= <mb@lightnvm.io>,
 Judy Brock <judy.brock@samsung.com>, Christoph Hellwig <hch@lst.de>,
 Matias Bjorling <Matias.Bjorling@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jun 19, 2020 at 11:08:26AM -0700, Heiner Litz wrote:
> Hi Matias,
> no, I am rather saying that the Linux kernel has a deficit or at least
> is not a good fit for ZNS because it cannot enforce in-order delivery.

Seriously, if you don't understand the basics of NVMe can you please stop
spamming this list with your crap?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
