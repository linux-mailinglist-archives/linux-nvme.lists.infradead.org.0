Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E3067728
	for <lists+linux-nvme@lfdr.de>; Sat, 13 Jul 2019 02:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8ucfyWRlBwj4AUIxZYMGnhkdORJa9k9MKqWl2slSoE=; b=cV2GjNXhI38pM7
	zCiW342YMK71cq6wY7eIJ/8Pz0+v4frRZ/9fp7H+dsfn0EHMtYpl45+PjrPRlHBVAJR2x5fAolZVQ
	Kh+Fb7cPNiyvSdZ6GNY0veJgkgYgX25C9tfNGtsfTV49gE4AEMbHvUuIraalwz5RccIgk4UXEmQtO
	fod8t01sbpToyPUQQKlBbp5DQLFaJKZOcTQj5yNaXiCXL8uDsk/n2lxURQuruKSsYUbAoM9DjVlM3
	bUAk778iVZRjmGQaWkkNUWqadrFK+Qcv5AMjeNkjIqYwNrBBWrnNmzObo9fqBIrBSBUPfhA5A1ggU
	oUb8Wad7e/nodzzUPgew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm5Uy-0001oz-BO; Sat, 13 Jul 2019 00:02:44 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm5UF-0001UN-7P
 for linux-nvme@lists.infradead.org; Sat, 13 Jul 2019 00:02:03 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hm5U8-0004XU-4w; Fri, 12 Jul 2019 18:01:52 -0600
To: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 Omar Sandoval <osandov@fb.com>
References: <20190712235742.22646-1-logang@deltatee.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <d1bcf1fa-baed-dbf6-d04b-31df3f7ad30e@deltatee.com>
Date: Fri, 12 Jul 2019 18:01:50 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712235742.22646-1-logang@deltatee.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, jthumshirn@suse.de, tytso@mit.edu,
 mmoese@suse.de, chaitanya.kulkarni@wdc.com, osandov@fb.com,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH blktests 00/12] Fix nvme block test issues
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_170159_623324_1E1AAC49 
X-CRM114-Status: UNSURE (   5.56  )
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
Cc: Stephen Bates <sbates@raithlin.com>,
 Johannes Thumshirn <jthumshirn@suse.de>, Theodore Ts'o <tytso@mit.edu>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Michael Moese <mmoese@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Oh, I forgot to mention there is a git branch of these patches available
here:

https://github.com/Eideticom/blktests nvme_fixes

Logan


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
