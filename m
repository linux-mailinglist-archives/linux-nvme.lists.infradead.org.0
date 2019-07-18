Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0C56C9AE
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jul 2019 09:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ea4M2yzHzzhT+uIHSEVRFhISnJoY2IG1gSMpssA8td0=; b=FBKg374Q8+hTjO
	84Ql1oufv7otmNNnd4jdZ5J4BBGLJSL9Y4M1UFweUy4+tx7lM/D8bNKS9m4jVGYIBRWphmXvI83TG
	zUlaqfgTZxGysPlP1eBUeC+gDTcxGUNbjCQJBNUc0L5taiVNAVVD/suN8yNYCV0bWuox4fKFr4P1y
	0XgBv8Nr2TPdmpWddwhJtRP1paXSW85Sh2YnrFXe7V9mi2ulwvbIg6cgJRt4J5hQc1C1n8AL0HHYd
	4EIgPOXZkGtO9f+D5rRxbSOEopEZz3cDj88acJMadOn1cYgtnURUBZ2YY3667yVjSb6sWxT6emZtw
	Sa4gx1ay1IkegJ7nE+8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho0S8-0003XC-RN; Thu, 18 Jul 2019 07:03:44 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho0Ry-0003W4-Ff
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 07:03:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 62042AD35;
 Thu, 18 Jul 2019 07:03:31 +0000 (UTC)
Date: Thu, 18 Jul 2019 09:03:30 +0200
From: Johannes Thumshirn <jthumshirn@suse.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH blktests v2 03/12] nvme: Add new test to verify the
 generation counter
Message-ID: <20190718070330.GC15760@x250.microfocus.com>
References: <20190717171259.3311-1-logang@deltatee.com>
 <20190717171259.3311-4-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717171259.3311-4-logang@deltatee.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_000334_866186_283313D0 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Theodore Ts'o <tytso@mit.edu>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Omar Sandoval <osandov@fb.com>,
 Michael Moese <mmoese@suse.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 11:12:50AM -0600, Logan Gunthorpe wrote:
[...]
> +_discovery_genctr() {
> +	nvme discover -t loop |
> +		sed -n -e 's/^.*Generation counter \([0-9]\+\).*$/\1/p'
> +}

Sorry for not having spotted this in v1, but do we really want to hard-core
the transport type in a library function?

Maybe sth like this:

_discovery_genctr() {
	local trtype=3D$1
	nvme discover -t ${trtype} |
		sed -n -e 's/^.*Generation counter \([0-9]\+\).*$/\1/p'
}

I think Omar can fix it up when applying.

Byte,
	Johannes
-- =

Johannes Thumshirn                            SUSE Labs Filesystems
jthumshirn@suse.de                                +49 911 74053 689
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=FCrnberg
GF: Felix Imend=F6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG N=FCrnberg)
Key fingerprint =3D EC38 9CAB C2C4 F25D 8600 D0D0 0393 969D 2D76 0850

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
