Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D23B172B50
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Feb 2020 23:31:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqsSLWgEDbZfoXraz1wAKfQDWZmWWE0Qau5Hpsybkqk=; b=rbSF28FB3qGN0I
	kxDiqYsTdK65Gmfp4u20H9wWcdZgeQPflHhj8hf048VwI+t6UXynjX6FSTbhU+Eb5wcRiI+RsjevG
	d+X3u+Zz0WTyllTzWkR2mg1KYfwSTSWrDMAKQdgs4auISAbiH1gzBOVM19X8nVX9vkrl8hsPLftZ/
	pebAigeKdpBnqn2fTiPtnarktOX+zycPGXjlVl4ugHXYL7Rnmpofh9y4Ot8+vBonNq5F2MoAyXoEJ
	kCBs2Xm2FFPynvK1+pbOo/M8Wd50q/omF2xweW2VW9UCJfI6kC0s40MNFBTn9vW6MnekEPsCy2Dta
	Ttq0S+Y4aN231zt+F77g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Rgx-0003GB-US; Thu, 27 Feb 2020 22:31:40 +0000
Received: from smtp-fw-9101.amazon.com ([207.171.184.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Rgt-0003Ej-CB
 for linux-nvme@lists.infradead.org; Thu, 27 Feb 2020 22:31:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1582842696; x=1614378696;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=uObpfsJDmihVgZnzlDTj5o7Ywc3QNpzXPVckbbWnw74=;
 b=N8NgEvvV3y/2R4LgKf9aD03U42NEIflI3KmPH6NF3VxXDuQDAz4jtBiw
 f+TwHsgZQ1iuI/58tM7HD4jY4EP0H6wyr5EVmi29ghIVu3gpV913nb+Od
 QoYqZTg+e8vzbZXyxERNlVALFWwBYXEu+/yVjvsw/oxjyTKt8B3aXZDtT o=;
IronPort-SDR: 5/rXP3wl4rOgsS34VYNAVuM5/ZludsOJikxutjMaTDc4GLRYE+pwdC2N/WRzkPzOtDqMJia7vV
 TeVdZvDejueg==
X-IronPort-AV: E=Sophos;i="5.70,493,1574121600"; d="scan'208";a="19601107"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1d-37fd6b3d.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9101.sea19.amazon.com with ESMTP;
 27 Feb 2020 22:31:27 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1d-37fd6b3d.us-east-1.amazon.com (Postfix) with ESMTPS
 id 883CF2880B2; Thu, 27 Feb 2020 22:31:23 +0000 (UTC)
Received: from EX13D01UWB004.ant.amazon.com (10.43.161.157) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Thu, 27 Feb 2020 22:31:22 +0000
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13d01UWB004.ant.amazon.com (10.43.161.157) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 27 Feb 2020 22:31:22 +0000
Received: from EX13D01UWB002.ant.amazon.com ([10.43.161.136]) by
 EX13d01UWB002.ant.amazon.com ([10.43.161.136]) with mapi id 15.00.1497.006;
 Thu, 27 Feb 2020 22:31:22 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "kbusch@kernel.org" <kbusch@kernel.org>
Subject: Re: [PATCH v2 4/5] drivers/nvme/host/core.c: Convert to use
 set_capacity_revalidate_and_notify
Thread-Topic: [PATCH v2 4/5] drivers/nvme/host/core.c: Convert to use
 set_capacity_revalidate_and_notify
Thread-Index: AQHV7BZmVG7GS2zvD0eE2vmktqMGT6gtx0WAgAHb04A=
Date: Thu, 27 Feb 2020 22:31:22 +0000
Message-ID: <1ed561abb467362b8ddf7949882b42e00d583a20.camel@amazon.com>
References: <20200225200129.6687-1-sblbir@amazon.com>
 <20200225200129.6687-5-sblbir@amazon.com>
 <20200226180819.GA23813@redsun51.ssa.fujisawa.hgst.com>
In-Reply-To: <20200226180819.GA23813@redsun51.ssa.fujisawa.hgst.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.161.45]
Content-ID: <CBCA5387B812CE4B8DC82CCF484CAAFC@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_143135_455069_44B53EE3 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.25 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 "Chaitanya.Kulkarni@wdc.com" <Chaitanya.Kulkarni@wdc.com>,
 "mst@redhat.com" <mst@redhat.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 2020-02-27 at 03:08 +0900, Keith Busch wrote:
> On Tue, Feb 25, 2020 at 08:01:28PM +0000, Balbir Singh wrote:
> > block/genhd provides set_capacity_revalidate_and_notify() for
> > sending RESIZE notifications via uevents. This notification is
> > newly added to NVME devices
> > 
> > Signed-off-by: Balbir Singh <sblbir@amazon.com>
> 
> Patch looks fine. Please change the commit subject prefix to just "nvme:"
> to match the local style and for length constraints (the committer may
> do this if they want).
> 
> Acked-by: Keith Busch <kbusch@kernel.org>

Sure thanks! Yes, that makes sense.

Balbir Singh.
_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
