Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE6F1F70BF
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jun 2020 01:09:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNAYLaXyB8TQhDWOxXFrDxd+2/Xy8m9Rh2QIYvZIctg=; b=D8+5fw+QRMMC2D
	RLh1uIkA8NyIJZX8Ni6hWNn0YyMHaPtAUT4eyr5tR6+nJRSnIJEoiQqo3YymICImB+EdtHEyBsrAG
	FSgbN1VIZ1BNtF1TlghjYJdcyLFZXSXKr9Y0XiepvKgsCm9+zDwLh4qrOxBrPmNGctjhO7JbeG6O2
	Mw9UOuGCQ6wI46NIxgrvVv7k7MN7Zvw7WnuMxfCDWTTzO7zUmMbxytNg6LVUrhg6ev2DscpEPfYpy
	lan8WalUEaLopRZEQa9UHwMjjkIv41P5AAlKf85it61hK6q36R+W9JuCGmj1QrtYIClFg4/buXxqg
	cyZPerVzXzaRAOP/MQqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjWKR-0003dr-Ar; Thu, 11 Jun 2020 23:09:47 +0000
Received: from ale.deltatee.com ([204.191.154.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjWKM-0003dJ-E0
 for linux-nvme@lists.infradead.org; Thu, 11 Jun 2020 23:09:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=deltatee.com; s=20200525; h=Subject:Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x2I+4wEt+ndD3DAovJGmxH8wykiwurzy6HtFRBsQBso=; b=AOlOEr1h01xKYHXIq+FDtdK8fV
 t938zGbURQF+SpD804shhOweuygX26rFPYZB7wOUfe8/fgjpwdu+sjbBNiG5Pgqzr6Bmszwk/L9kC
 K1p0Bp8VHsoLXn+0yE8uAaYeOWiwcQ6zTuEieIYrLtSoX8QjFNsLfpYiPMM9g2oUtarlEt31gAVAK
 O+ryzQeuT8086Kf71K3gMScjAJjWw4yQbz1G4F8xNuOOrLZQVnvLehDj7gAou8YBFUDH1Di74PCme
 jkk7DtdgHIlGaIYu5E6MKYhgmA6sM7MsnjvcIktmfJMyJIPnO7cgQs2FXazslsuMYCB9Yi3Lpeshq
 MHLudDUQ==;
Received: from s01060023bee90a7d.cg.shawcable.net ([24.64.145.4]
 helo=[192.168.0.10])
 by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <logang@deltatee.com>)
 id 1jjWKF-0001kE-4v; Thu, 11 Jun 2020 17:09:35 -0600
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20200514172253.6445-1-logang@deltatee.com>
 <20200514172253.6445-6-logang@deltatee.com>
 <BYAPR04MB4965AE69900A7832EEC4141086800@BYAPR04MB4965.namprd04.prod.outlook.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <3e198d5f-e303-25d9-0e8e-e5916809800d@deltatee.com>
Date: Thu, 11 Jun 2020 17:09:34 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB4965AE69900A7832EEC4141086800@BYAPR04MB4965.namprd04.prod.outlook.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 24.64.145.4
X-SA-Exim-Rcpt-To: sbates@raithlin.com, maxg@mellanox.com, axboe@fb.com,
 kbusch@kernel.org, sagi@grimberg.me, hch@lst.de,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chaitanya.Kulkarni@wdc.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v13 5/9] nvme-core: Introduce nvme_ctrl_get_by_path()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_160942_468009_980ACCD3 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Stephen Bates <sbates@raithlin.com>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2020-06-11 5:02 p.m., Chaitanya Kulkarni wrote:
> On 5/14/20 10:23 AM, Logan Gunthorpe wrote:
>> +#ifdef CONFIG_NVME_TARGET_PASSTHRU
>> +/*
>> + * The exports that follow within this ifdef are only for
>> + * use by the nvmet-passthru and should not be used for
>> + * other things.
>> + */
> 
> The above comment is duplicate #ifdef is self explanatory and I didn't
> find similar style in existing repo  (e.g. CONFIG_NVME_MULTIPATH,
> CONFIG_BLK_SED_OPAL) so let's not introduce new style which will create
> confusion to future code.

Christoph specifically asked for this ifdef and comment.

Logan

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
