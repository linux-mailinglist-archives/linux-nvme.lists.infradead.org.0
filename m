Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C3A1A8794
	for <lists+linux-nvme@lfdr.de>; Tue, 14 Apr 2020 19:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zz0GFWNifiHtIUBNugKCr16ChCf4az0ay/K7XCGh+E=; b=RqyzrRGiYlGmlC
	4Uy+zxeBN8Agfr86rwmo640/tdM4vV6dBmWfd6+Hw9Y0/mBoJusSnKujnPfMVPtE8b7C7kpmMcSm0
	OsN/TCbW/7imNUnBm6qPWlgp/HepdPnotpD4UEX8i3HwUJSB6oyZzMJQf3fQ1pUSQOl+hzOOLVpOz
	GDMd1pdMniSIKB9/i0paHkx/xgxLuuL7jKl1ycgTxAiBRE+AXj6b8elcgbWbcEVwm3BeNpIYmh1xE
	qDT6HyG9m0tEu1E4UNMKHGISydmGEOCvARhP+GUuMqywOFUNLe/5EDo9Gd/Dvi0HTs8s532yBCDzY
	9x+Chf/z56K7TAQODF+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPS7-0005CQ-O7; Tue, 14 Apr 2020 17:34:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPS1-0005BN-P6
 for linux-nvme@lists.infradead.org; Tue, 14 Apr 2020 17:34:22 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9AAEF206A2;
 Tue, 14 Apr 2020 17:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586885661;
 bh=kh08S5dbHA6FwFQ7E5TnW2HyGawRGiHy0gXzR/3V0OI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c6OFaHl1J+M0/J5dsII+ZJCVP+IQ5+FaLVBGZnA57r6tgKQOoo9xfkHrjscTLIOiz
 wwjwZhcZ5k8EUyCEdzprSbgdI3x/vC5kTiZiGePgwbIv+4WCmIzsiA6X1DjM+X5Mic
 EfqVNHIKleUKKj1KyZeGO1qOqO2e9oKOMcTURJqg=
Date: Wed, 15 Apr 2020 02:34:14 +0900
From: Keith Busch <kbusch@kernel.org>
To: Murali N Iyer <mniyer@us.ibm.com>
Subject: Re: nvme-cli support for persistent event log
Message-ID: <20200414173414.GA29863@redsun51.ssa.fujisawa.hgst.com>
References: <OFBFEC6E14.C0E83521-ON00258549.006FFDBC-86258549.00708C3D@notes.na.collabserv.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OFBFEC6E14.C0E83521-ON00258549.006FFDBC-86258549.00708C3D@notes.na.collabserv.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_103421_833845_43A39DC3 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 03:29:22PM -0500, Murali N Iyer wrote:
> 
> Hi
> I looked at the latest nvme-cli and didn't find the support for persistent
> event log. Is my understanding correct or I have not looked at hard enough?

Your understanding is correct, there is no support for retreiving
or decoding these logs in nvme-cli. I'll be happy to apply a patch
implementing this feature if someone can successfully test it on a
capable device. :)

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
