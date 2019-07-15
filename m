Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF1C683F8
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 09:15:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYjmmLkt/HKEdXK8zp+lRk/emgNqEQYhZTRMHr/YFg8=; b=io2rzSRv8e6aLU
	IKdutJniYZ/1mHKMEsYQlXL4ftpmL5EGVGpfrX3XP4t9XeSQnhc1VPYa527HREcJbKO9QjkchcQ6u
	yJdDeSD1RS6OTkyUQp21gC4EutXClVjRNn08j/S8lTZyam84LuQWe5taRslBQE3khfKUf+PoV1e9n
	ajBdc1ORI6dFfGc6s296RPFeDJASc78WGMy9OFZzTdUJp7kCME7AI3Jjsrfsa1DTVMA1V6IGK9JXQ
	kN1WT0hA9mH55bHGsS+5vpPaGKRPEjjM6SEtQ5mRY9yml7vvdBQ+FZKbomoYBLtxQm12DhEBeWXZg
	n3M2s4+8QnRi6FohJAoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmvCy-0006b1-N3; Mon, 15 Jul 2019 07:15:36 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmvCp-0006aC-Nz
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 07:15:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 91E31AF04;
 Mon, 15 Jul 2019 07:15:23 +0000 (UTC)
Date: Mon, 15 Jul 2019 09:15:22 +0200
From: Johannes Thumshirn <jthumshirn@suse.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH blktests 07/12] nvme/018: Ignore error message generated
 by nvme read]
Message-ID: <20190715071522.GB4495@x250>
References: <20190712235742.22646-1-logang@deltatee.com>
 <20190712235742.22646-8-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712235742.22646-8-logang@deltatee.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_001527_929483_262E53D2 
X-CRM114-Status: GOOD (  18.08  )
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

On Fri, Jul 12, 2019 at 05:57:37PM -0600, Logan Gunthorpe wrote:
> nvme-cli at some point started printing the error message:
> =

>   NVMe status: CAP_EXCEEDED: The execution of the command has caused the
> 	capacity of the namespace to be exceeded(0x6081)
> =

> This was not accounted for by test 018 and caused it to fail.
> =

> This test does not need to test the error message content, it's
> only important that a read past the end of the file fails. Therefore,
> pipe stderr of nvme-cli to /dev/null.

How about redirecting all of the output to $FULL?

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
