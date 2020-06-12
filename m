Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E671F7F70
	for <lists+linux-nvme@lfdr.de>; Sat, 13 Jun 2020 01:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0XoEepvLqlATGeyTYqt41A9vxflCDLWqKSHKuApCt4=; b=Fe5OE9u2kKaViv
	uGMQAtsKKOdkIX8SR2cFIwvCVxU28xm/OGGiB7w2yC7IFyUlTob+OOTZZnpLRoiaLdmlpyHjeJ/FM
	iCMlj6/8yRv9i6w+Tv0LYRdFByWoAAsXzt6qZFvx4e24eLwDObj1F7oZrYk5QwLCQm/9w6nx+71NE
	lGsCnMzdHMqpqv8spgbj30vG0St6gir5GNktND0QavC+XMZhW9xh84XX4cGx05aNXqPRxPJUkCr4M
	I4hlx+ypZ3sZg4Q1BfZ6E+O93G7r6u/7jb2RAykOghpN8Wjhk5xBvLIHUEDKuks0fQtjtdbXw1ZDF
	/OD7XcxlLuOCPMlOOnDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjsmL-0006O0-Re; Fri, 12 Jun 2020 23:08:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjsmG-0006NW-Jz
 for linux-nvme@lists.infradead.org; Fri, 12 Jun 2020 23:08:01 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DCCAC206D7;
 Fri, 12 Jun 2020 23:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592003279;
 bh=4h8G8QS+hApSJYcSExe64qrEkYeFxm6YRBwEBrZ4jU4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dkAjo4po0ZTkT+SfG1kWlUXI4FkiYiPQIJ1ft+9Vll3RSGYlRsAs5LxQhjZsRYoD5
 VeuaWX7KMycOIICMaN3aaLNY+tAIA9XVfM47qwWmbZwAvJBlqgO0XlByMYw/TEzJ9C
 g1nbANRpQEUs+Ik4Jc/iuzunUv4VIy9eyDIsdoMI=
Date: Sat, 13 Jun 2020 08:07:51 +0900
From: Keith Busch <kbusch@kernel.org>
To: Jeffrey Lien <Jeff.Lien@wdc.com>
Subject: Re: [nvme-cli] Commit fix apsrintf return check
Message-ID: <20200612230751.GA8834@redsun51.ssa.fujisawa.hgst.com>
References: <BYAPR04MB565662A7A29C4A0EAE3F64DBEA810@BYAPR04MB5656.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB565662A7A29C4A0EAE3F64DBEA810@BYAPR04MB5656.namprd04.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_160800_676744_CFE22C8D 
X-CRM114-Status: UNSURE (   7.38  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Brandon Paupore <Brandon.Paupore@wdc.com>,
 Randy Bates <randall.bates@wdc.com>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 08:40:57PM +0000, Jeffrey Lien wrote:
> Keith,
> I noticed this commit (f719dfdff59518c2ea75e82695ea0e3e6026a4f7) is only in the 1.11-stable branch and not in the master.  Just wondering if that was intentionally or if it was missed.   I was expecting it in the master branch.  

It was committed to master first here:
https://github.com/linux-nvme/nvme-cli/commit/f4f3fd2ea4b878fe38fd3409f374ded8d5b34a4c

It just has a different SHA.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
