Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AB4120DD
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 19:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0UMFzYsBsCdXt/TyyuHkRpmH9Yjct2VGvNOxtRz0OvA=; b=ffERRQtGCkocFP
	uZeBlNOwHT3TterS5HgNbg0bWppFS42I8YvQpvKMgw1rfIFNAkcebvAElFVNYnmUHqZp3qJ0UKfze
	XY/rEvjQdAVLiupi6ZY5Qjvp9GJvUZ4XVyNyjEHi850QVhW4wI6Jyyza7C8RBS0tU987o7wG0ui1g
	TwjKK1w1AAkjHOGaV02uw0ZPwX5iNxmYbphjXTGvXiQAnFQIwd5kuOGM5KajV5yLGkrSz6NqtkFqA
	SJauBMN9rDasnOaaQHufF6+4sNCuCWfOWb/wWBtvYaKfBTxwJYlJq1Fp7udXmD7jS9H9xP0gfpR+x
	s43DbjAKuW4msmUP/hgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMFGn-00027w-31; Thu, 02 May 2019 17:13:17 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMFGi-00027d-Pb
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 17:13:13 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 10:13:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; d="scan'208";a="147731088"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga007.fm.intel.com with ESMTP; 02 May 2019 10:13:09 -0700
Date: Thu, 2 May 2019 11:07:25 -0600
From: Keith Busch <keith.busch@intel.com>
To: Jeffrey Lien <Jeff.Lien@wdc.com>
Subject: Re: [PATCH] [NVMe-CLI] Add Disable IO flag to wdc_dump_dui_data
 function
Message-ID: <20190502170725.GA28783@localhost.localdomain>
References: <1556650099-28572-1-git-send-email-jeff.lien@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556650099-28572-1-git-send-email-jeff.lien@wdc.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_101312_882626_0091EC90 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 06:48:32PM +0000, Jeffrey Lien wrote:
> Signed-off-by: Jeff Lien <jeff.lien@wdc.com>

Applied, thanks.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
