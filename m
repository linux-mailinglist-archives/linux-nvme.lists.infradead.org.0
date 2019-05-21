Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8842D25364
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 17:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PSrXL5rRG6tIykRrxBlDaC3EksMwaCBTRxUFjsfHrEo=; b=s+ABuzkZ90IPoV
	5Xgy2qGotX+oK68BfWv90EhNGjLtPUsewSKU5aZG60rQJH5BTu4xCbql8fuo+JdoypxUqhdig7Gmo
	4DO67ey73RNtfQYf6dV/kSNFec+T+5byoIFHkcOojUK026+QnPwH1d9C88mwVQi1kMsuIvkBKBryv
	LOCMLTK0+FCk+dboFVVB2CX6akD5nPvrCTpUArEYd2udMfeEYBJNM3dLvHiliIgEDKpxljCTmoGre
	JdQdgklmxHKeHbt7cA0bT77bTPduP0IlmWGSZ6/T3HjXgyQjVN5ViSJrqly9re0NEaelSfzF4VHtC
	2Z2ffPsdfbcUXgmz2m8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT6J0-0000Mv-SO; Tue, 21 May 2019 15:03:54 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6It-0000HY-LA
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 15:03:49 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 08:03:46 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga004.jf.intel.com with ESMTP; 21 May 2019 08:03:45 -0700
Date: Tue, 21 May 2019 08:58:40 -0600
From: Keith Busch <kbusch@kernel.org>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH RFC] nvme: Common subsys and controller instances IDA
Message-ID: <20190521145840.GC1639@localhost.localdomain>
References: <20190515213351.22190-1-keith.busch@intel.com>
 <20190516064651.GA30234@lst.de>
 <1f0e7049-c926-98e0-3624-0d24eb45cd87@suse.de>
 <20190516144452.GB23372@localhost.localdomain>
 <yq17eaqbg4c.fsf@oracle.com>
 <040beeb5-d328-d5b0-f165-51bbd40f4c23@mellanox.com>
 <20190521143540.GB1639@localhost.localdomain>
 <55f15756-0385-f9c4-a916-079a6b12a5c1@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55f15756-0385-f9c4-a916-079a6b12a5c1@mellanox.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_080348_268650_C7CDF457 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 05:51:25PM +0300, Max Gurtovoy wrote:
> =

> On 5/21/2019 5:35 PM, Keith Busch wrote:
> > On Tue, May 21, 2019 at 02:54:53AM -0700, Max Gurtovoy wrote:
> > > maybe we can improve it and print also the namespace during the "nvme
> > > list-subsys" command.
> > > =

> > > something like:
> > > =

> > > [root@server50 ~]# nvme list-subsys
> > > nvme-subsys0 - NQN=3Dtestsubsystem_0
> > > \
> > >   =A0+- nvme0 rdma traddr=3D11.212.140.146 trsvcid=3D4420
> > >   =A0\
> > >   =A0 +- nvme0n1 SN=3Dcf8bbff661502c51 Model=3DLinux
> > >   =A0 +- nvme0n2 SN=3Dcf8bbff661502c51 Model=3DLinux
> > > =

> > > =

> > > and we'll get subsys/ctrl/ns relations in 1 cmd.
> > > =

> > > thoughts ?
> > Yes, this is very useful! I'd like to add this as soon as possible.
> > Do you have a patch, or is this just an example?  The only change I'd
> > recommend is remove SN and Model since those are controller properties
> > rather than from the namespace.
> =

> This is just an example but I can prepare something in a couple of days.
> =

> Let me know what do you prefer (and which attrs to print there)

Let's just get the namespace handles (ex nvme0n1) displaying with each
of their controllers within a subsystem. Showing just this relationship
will be immediately helpful. We can can add verbose flags to get more
details in the future.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
