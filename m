Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5328057C88
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 08:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rjhoAdV8F8jrC09PLsR0AVAPHsl8EUUC4nOnKKV731M=; b=t4uxrh3A6tXT6r
	Dz28fN/4spIqF8f2L+kLsbem3wx+Pul/kBeDEGXMG4URxTYtRWW2Ag1tg7LFJd/bLeVooBn93xVHs
	7N0X6yGU9MJCEjP3QqeNH6EMW9R1+5yhOO2S5Eh50zhQHfovharENb6hkfA+mLLfdJzMX89tRwZ/z
	mAQxrvanC6l3tcOLbqpcVpjOJ0Z7RD5M38Cz56LkbMD9K/Gp+w+47HZJT2vGRrzbnq/0WsTDWp+j/
	9L3TrYTBbSsqfXyd9j2o0SFZRBc/fxWqzvV8eCsjh5MnzxR+qYSQEUx3c4YMRCUWNCgA/ugeFSTcZ
	uS3X6rcf49LJNhAYKT6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOI3-0000DH-94; Thu, 27 Jun 2019 06:53:51 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8x-0006KM-5A
 for linux-nvme@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=meUZa+SjnZy0AiPnL40zHi1xMGlVdfYMo6SsQAnIoVU=; b=jGk6dNbOaKvTHDNK0txPB34bh
 yW32FRmn+IK4cayewWay7dCnkte9+10k/ZweZQOw94K2AazBuFAmqJtkSKZeJOtiZ37EZeqchMKPt
 RV5kU5Ih7cl4x1msMQZkjHdhHTTo725vKhQqm6wKmWVluvZGm9w/xKL9+78//5EjL8q7/KipEn9ZL
 5QPIR8vrYmpGddlr+Rp99vbpKWv7sx4xs4Gh2KhCTRWsueBZEEx+odAJ6N7Xc2ijFj7a2VKZoSonU
 lRPPyjsMrCXOrXzhNcuEbi0STOHEBjjDS/tkc81o1XcDfeByUKMDiKIX5HQzz564DFn6GI2rrD9jP
 P7bU///+w==;
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgHtL-0003fD-TM
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 00:03:57 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5R005Pg011838; Wed, 26 Jun 2019 17:02:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=pfpt0818; bh=meUZa+SjnZy0AiPnL40zHi1xMGlVdfYMo6SsQAnIoVU=;
 b=IfBAp8iRMUUPFcIbLXJz0ABnBO8NkTRgmkGeoBW6BgkbUoG6Tetd8DLsWTvSqLQfPOZO
 rkCQAnweuJt82htJKXkIaQAJCHcpLRA6hxSMKf5PLw/kJrYlIYfzeWX76hAfOHxcLUUH
 9R5GG/jGjWhp/zg+jqPpAmCM49EpV/OApUlUf2NGpol/Xm0mCCGV1jRl6Zs+mcGgdzzj
 uEuqR7V4eyl49h3fOTosvxuYK9IWvoTEZShfAhbGP77w3+2aP32oUJzbMNLrOxD2WJGD
 WSgMPajz0GSG2UpWLF6qI2iNC8qEvrc1+EgZAFpl3ETXiyieKdh3LiU192bdzu4p0heb Yw== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2tcbgc9wwq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 26 Jun 2019 17:02:46 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 26 Jun
 2019 17:02:44 -0700
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Wed, 26 Jun 2019 17:02:44 -0700
Received: from mvluser05.qlc.com (unknown [10.112.10.135])
 by maili.marvell.com (Postfix) with ESMTP id 5564B3F703F;
 Wed, 26 Jun 2019 17:02:44 -0700 (PDT)
Received: from localhost (aeasi@localhost)
 by mvluser05.qlc.com (8.14.4/8.14.4/Submit) with ESMTP id x5R02i30028181;
 Wed, 26 Jun 2019 17:02:44 -0700
X-Authentication-Warning: mvluser05.qlc.com: aeasi owned process doing -bs
Date: Wed, 26 Jun 2019 17:02:43 -0700
From: Arun Easi <aeasi@marvell.com>
X-X-Sender: aeasi@mvluser05.qlc.com
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [EXT] Re: [PATCH] nvme-fc: fix module unloads while lports still
 pending
In-Reply-To: <ddcc1865-4494-9cfe-d371-9995c19ae1c4@gmail.com>
Message-ID: <alpine.LRH.2.21.9999.1906261638450.7630@mvluser05.qlc.com>
References: <20190625160604.3905-1-jsmart2021@gmail.com>
 <alpine.LRH.2.21.9999.1906261516150.7630@mvluser05.qlc.com>
 <ddcc1865-4494-9cfe-d371-9995c19ae1c4@gmail.com>
User-Agent: Alpine 2.21.9999 (LRH 334 2019-03-29)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-26_13:, , signatures=0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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

On Wed, 26 Jun 2019, 4:00pm, James Smart wrote:

> External Email
> 
> ----------------------------------------------------------------------
> On 6/26/2019 3:20 PM, Arun Easi wrote:
> > Changes look ok.
> > 
> > Did you hit this during testing? Wondering because LLD would have unloaded
> > prior to nvme_fc, so no lport/rport should remain if LLD behaves well.
> > 
> > -Arun
> > 
> 
> It's been a longstanding annoyance - usually tied with test cases that used
> modprobe -r.   Issue is the drivers would call the targetport unregister
> calls, which would release the targetport once all the outstanding ios were
> cancelled to the lldd and the link-side association terminated, but the
> controllers are in a reconnecting and not yet torn down.

Did you mean a "nvme_reset_ctrl/nvme_delete_ctrl" is in progress?

> From the drivers point of view, they are unlinked. Thus it was 
> intended the driver could unregister/unload/reload/reregister and if 
> possible reconnect - allowing the nvme device to never be deleted. Given 
> the lack of module reference, when the driver module left, so did the 
> transport module, even with the live data structures.
> 

Thanks for the explanation. This reminds me of a similar issue we hit. The 
fix under consideration was to wait in nvme_fc module exit to quiesce 
rport/lport before proceeding.

Anyway, with the fix above, I am wondering, if nvme_fc is active for a 
brief time just after the unload of LLD, the unload of nvme_fc would fail 
(saying in use), wouldn't it? If so, in addition to the above fix, a 
quiesce (flush) of such threads during module exit would give "modprobe 
-r" a better chance to unload both modules.

Thoughts?

-Arun



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
