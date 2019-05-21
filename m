Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECBF25256
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 16:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UTj3HCW6xjAACcLqD0JIoZkDUDD3MezKhtag12oB/Y4=; b=RHOar7do+ktRna
	H0xas+0I9hQbZ4XCGf7XffrtS9xzLNwSJTnXM7Ck/W3YK6nMYWBekh00sr9/3wYAz7PRsAgtCDFYD
	9oKA092CYF/sfzQTOZo55inCuiaSmzAOikBE0PA7uh4PPWNQzOuWAwC/nLeXRCirFyFirDe25WXcz
	/90209Ouu3G5FxiWfVKjhmK/7j0Qyinkgvwhg/fjfzwy0N5sGSvKtmuEojDW4kJ7albK21PawcjrR
	7OOYmYQGoBYWQMPpnA1/jt0BiSu92IhPzVZ4q6qDbFXH3U4FcbuZQw9lO1XpyMAQ2W60QSsKtHphF
	0d76OxvbWWlQ2rW/2MzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5wh-0006ep-MA; Tue, 21 May 2019 14:40:51 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5wc-0006eV-RP
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 14:40:48 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 07:40:46 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga003.jf.intel.com with ESMTP; 21 May 2019 07:40:44 -0700
Date: Tue, 21 May 2019 08:35:40 -0600
From: Keith Busch <kbusch@kernel.org>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH RFC] nvme: Common subsys and controller instances IDA
Message-ID: <20190521143540.GB1639@localhost.localdomain>
References: <20190515213351.22190-1-keith.busch@intel.com>
 <20190516064651.GA30234@lst.de>
 <1f0e7049-c926-98e0-3624-0d24eb45cd87@suse.de>
 <20190516144452.GB23372@localhost.localdomain>
 <yq17eaqbg4c.fsf@oracle.com>
 <040beeb5-d328-d5b0-f165-51bbd40f4c23@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <040beeb5-d328-d5b0-f165-51bbd40f4c23@mellanox.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_074046_937500_29D56826 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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

On Tue, May 21, 2019 at 02:54:53AM -0700, Max Gurtovoy wrote:
> maybe we can improve it and print also the namespace during the "nvme =

> list-subsys" command.
> =

> something like:
> =

> [root@server50 ~]# nvme list-subsys
> nvme-subsys0 - NQN=3Dtestsubsystem_0
> \
>  =A0+- nvme0 rdma traddr=3D11.212.140.146 trsvcid=3D4420
>  =A0\
>  =A0 +- nvme0n1 SN=3Dcf8bbff661502c51 Model=3DLinux
>  =A0 +- nvme0n2 SN=3Dcf8bbff661502c51 Model=3DLinux
> =

> =

> and we'll get subsys/ctrl/ns relations in 1 cmd.
> =

> thoughts ?

Yes, this is very useful! I'd like to add this as soon as possible.
Do you have a patch, or is this just an example?  The only change I'd
recommend is remove SN and Model since those are controller properties
rather than from the namespace.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
