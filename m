Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B9E103EC4
	for <lists+linux-nvme@lfdr.de>; Wed, 20 Nov 2019 16:31:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Naiaq8FFD2EG7cPFJ9fu5yXCjMams37+UO3rp7F6oJw=; b=ipwPoE9L2/RQM6
	FJplckx79KT/sVJa9fIIkZP8th1XanWSIjB/gm4oAjkwanC1VNg7GHIa5Zsfp3RZeDkr54riPiWyO
	CZ7wy0gNIUxVIl9tIHCFpqZElDSxNW3ngf2PwanAKrO9iXqV5XHbJTM+a9Umxq9Qy86ljfBIjzETj
	KuEQmCVjhx5sIFo8v/gJkRiCADQlQeLhfz4Q/2pEoPkELFlU2MRCloQPXsO1V2Wb3egXyPg5n3vSC
	BO92FkNkmDqfsV/ltuhfgYW6wQCVkVDlFZ+o8FHEefwkay5/thlh0rCifmwU4gqSoNQIRIhz0dnOL
	l3/pX7VNTENFjhJGtz8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXRwa-00047J-Ny; Wed, 20 Nov 2019 15:31:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXRvJ-0001sB-He
 for linux-nvme@lists.infradead.org; Wed, 20 Nov 2019 15:29:42 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4966020637;
 Wed, 20 Nov 2019 15:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574263780;
 bh=gCjUOXuK/N0E6Ewt314lFMblSrAKn/AjQ8y0pRhAkFs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Yc36UqXNnHM2p8UO6yvnSMelLtwpYLYV+V2DFS3lwiAfQHPoXdx63DniHGWvsBo35
 zaUovZix1AAIHpMnWcQ8uO4kZ3Jysm06v1h+vtjBTV7JkbeqViA7k4/GgDM4D+PIy7
 eL/45xIIqzsr1xTFWexaG8vj3QwDbQr6MKPG/COg=
Date: Thu, 21 Nov 2019 00:29:35 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sushil <sushil32@gmail.com>
Subject: Re: NVM Sets supported on Linux?
Message-ID: <20191120152935.GA9426@redsun51.ssa.fujisawa.hgst.com>
References: <CAOoKxP99U8E=oAY23wA4_JVQNbPXVnkpcL6_-_zcwCnYDCoBaQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOoKxP99U8E=oAY23wA4_JVQNbPXVnkpcL6_-_zcwCnYDCoBaQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_072941_647972_35E35AE2 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 01:58:29PM +0530, Sushil wrote:
> Hi All,
> 
> Are NVM Sets supported on Linux (Endurance, PLM etc)?
> I could find the userspace command option "id-nvmset" (and the ioctl
> NVME_ID_CNS_NVMSET_LIST) in the nvme-cli,
> but nothing in the Linux kernel host and target.

It makes sense for an admin to query this kind of thing, so tooling
has support for that. It could possibly make sense for the target to
implement sets if it can determine that two namespace resources are
independent from each other, but what do you want the host driver to do
with that information?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
