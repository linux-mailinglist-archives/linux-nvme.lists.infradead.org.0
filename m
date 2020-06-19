Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEE12002F9
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jun 2020 09:47:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwFtfpHmKmYUYGf4w55WhcJutm9mrBMlpBMXCeY/rfQ=; b=lg/o5+rlsi31Y3
	Q/iUD3eAUpc2+TpIcxWNeB/OemmlZuDNE3KqMpVyL+dUZcNp9QCmvXnJfEvtWQJ4n9G1w9Pypxhvh
	lNt4vWEpHTcC6eFExat8pHjCdVIWHVDV0mY1OpH7WvsZKOinF9FHGalDQquZ52dvAHQNNsetkfQLl
	Rkgv9s4lLXsJG9rv+AS+DBhWWfLHchhO/3Sm/ejZRau21HQmcjdm3Y5oJFuhbiD1aSQtipgyW893n
	hT/yliIYs1ol2KmiVxUlS6bSPTM8oBnWIczrCvpPdWn3elUDakkONWjvGJzQVB6XX51r9n2VlIhlt
	LB1i7eIuAf1OR8dMzQCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmBjz-0002MC-UK; Fri, 19 Jun 2020 07:47:11 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBjI-0001m2-66
 for linux-nvme@lists.infradead.org; Fri, 19 Jun 2020 07:46:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id CF271B195;
 Fri, 19 Jun 2020 07:46:25 +0000 (UTC)
Date: Fri, 19 Jun 2020 09:46:25 +0200
From: Daniel Wagner <dwagner@suse.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv2 4/5] nvme: support for multi-command set effects
Message-ID: <20200619074625.jgeh3pynd5iff4pk@beryllium.lan>
References: <20200618145354.1139350-1-kbusch@kernel.org>
 <20200618145354.1139350-5-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618145354.1139350-5-kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_004628_580166_A02DB2E5 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: axboe@kernel.dk, sagi@grimberg.me, Keith Busch <keith.busch@wdc.com>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Javier =?utf-8?B?R29uesOhbGV6?= <javier.gonz@samsung.com>, hch@lst.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 07:53:53AM -0700, Keith Busch wrote:
> From: Keith Busch <keith.busch@wdc.com>
> =

> The Commands Supported and Effects log page was extended with a CSI
> field that enables the host to query the log page for each command set
> supported. Retrieve this log page for each command set that an attached
> namespace supports, and save a pointer to that log in the namespace head.
> =

> Reviewed-by: Javier Gonz=E1lez <javier.gonz@samsung.com>
> Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
> Signed-off-by: Keith Busch <keith.busch@wdc.com>

/me did also spot the double new line :)

Reviewed-by: Daniel Wagner <dwagner@suse.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
