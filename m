Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7941257B95
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 07:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x7kBNTJ0skFL6DGJOtuOTdzaMrw4oixiFurPj2fS1AE=; b=OmBA0HzWOLo+TK
	fAzZfg3m220ciUHifv3G/u9kaugoJsSsG0woZ4Kg9Dmxh6hgVcW11R1ona3ozR3mCXYtprHVKE0QY
	+HQ8tJxAkh2QxghqeEZZcTqNmtg/kzajUs5UrWACjUvfO5cwHlIi3DZ3pn/PWuuvoR4eAoj2E18cU
	SG6pqTEo/+r1YBbqDul3TJSVMvFI3b6e4J7lMU3oBOveBQ27lD1k1le+5mOLpEXU+x27DBoEAGSRz
	wr1zUvfuOwzxbGhoTkvIwbz8qhD+e3sYqW36qrt8zzQaVe9co8uVtJlyNqg2jpIgKs1iqeUw9mASX
	YnWvovpt1UaYbnhF3c1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgN6P-0000Dj-My; Thu, 27 Jun 2019 05:37:45 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMqO-0006ep-Iy
 for linux-nvme@bombadil.infradead.org; Thu, 27 Jun 2019 05:21:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+sdeG3onFAJVH4CKHowqpW96rjDHj4qsryghXdz9ftQ=; b=CwH3R4GblTa6ZmEYx2922NMo1
 SD/4tjDlXg9rEki5eBz0lUoRE1auWdnODpLHBAVnD2yXUvblH4EL0HDoF09Cqp+kCadvSb+AEN5IA
 GsDbwAaFuZPjEltbGER/vcb1XebBtjkt/3U23GMYOnJk0hbVQMudVLMubYFwsnysy8x5o0I2IPI5m
 W9ncF+H1Qe2vFYxtSBfRSzSrSPKSwYLQLKthYfL0wSWsippEsMeDv24CIqc6DsZzwIv0VIvSvPcW2
 xKzO0WDh+dyjrp5DEl+uvDopfORO8ddWhUjc7PRNMQnXzLZRrtICWS6QwFxjVfGgqQChufjzuoNym
 Yq2WNFA1w==;
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgIny-0005Iw-OS
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 01:02:29 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5R10E5a013539; Wed, 26 Jun 2019 18:01:19 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=pfpt0818; bh=+sdeG3onFAJVH4CKHowqpW96rjDHj4qsryghXdz9ftQ=;
 b=IzmTPyn4aFF29txMeVVCcFd9JfDAnB8QfPX201kLWRnJ0VPJNvCykOfWzBZ++N8Yaoyw
 FvXFAQ/osB+rMtqzcdkouecvC2u14vPrr3eygAips4+MIJvYX9x0DjLgjjXVUpmRtWni
 PGs+4ThxYW0Q8I4eBqclALMi+I2HqaSyGqZzRsB/R24T/ykz3lM4Wz/W82CJsObjlLUA
 PeNNTyNSxz22mFFIFyLRFKDxl2ICX2nY42Hm94xXqr3psPbKY++fI2BXNBE2xyZO8xe5
 murzmJLBOOUU7Ql0ZKNXeAEEEL6n74ARMwDmWS7Tb8PeXP211+cTGn+hlgE0/hGvvjSS uA== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 2tch698nm2-3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 26 Jun 2019 18:01:19 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 26 Jun
 2019 18:01:18 -0700
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Wed, 26 Jun 2019 18:01:18 -0700
Received: from mvluser05.qlc.com (unknown [10.112.10.135])
 by maili.marvell.com (Postfix) with ESMTP id 80A2A3F7044;
 Wed, 26 Jun 2019 18:01:18 -0700 (PDT)
Received: from localhost (aeasi@localhost)
 by mvluser05.qlc.com (8.14.4/8.14.4/Submit) with ESMTP id x5R11IFr029497;
 Wed, 26 Jun 2019 18:01:18 -0700
X-Authentication-Warning: mvluser05.qlc.com: aeasi owned process doing -bs
Date: Wed, 26 Jun 2019 18:01:18 -0700
From: Arun Easi <aeasi@marvell.com>
X-X-Sender: aeasi@mvluser05.qlc.com
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [EXT] Re: [PATCH] nvme-fc: fix module unloads while lports still
 pending
In-Reply-To: <5ff51235-ec57-5657-9879-3f218b3b6c0a@gmail.com>
Message-ID: <alpine.LRH.2.21.9999.1906261756380.7630@mvluser05.qlc.com>
References: <20190625160604.3905-1-jsmart2021@gmail.com>
 <alpine.LRH.2.21.9999.1906261516150.7630@mvluser05.qlc.com>
 <ddcc1865-4494-9cfe-d371-9995c19ae1c4@gmail.com>
 <alpine.LRH.2.21.9999.1906261638450.7630@mvluser05.qlc.com>
 <5ff51235-ec57-5657-9879-3f218b3b6c0a@gmail.com>
User-Agent: Alpine 2.21.9999 (LRH 334 2019-03-29)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-26_14:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_020227_184854_2C307D7F 
X-CRM114-Status: GOOD (  33.28  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, 26 Jun 2019, 5:34pm, James Smart wrote:

> On 6/26/2019 5:02 PM, Arun Easi wrote:
> > On Wed, 26 Jun 2019, 4:00pm, James Smart wrote:
> > 
> > > External Email
> > > 
> > > ----------------------------------------------------------------------
> > > On 6/26/2019 3:20 PM, Arun Easi wrote:
> > > > Changes look ok.
> > > > 
> > > > Did you hit this during testing? Wondering because LLD would have
> > > > unloaded
> > > > prior to nvme_fc, so no lport/rport should remain if LLD behaves well.
> > > > 
> > > > -Arun
> > > > 
> > > 
> > > It's been a longstanding annoyance - usually tied with test cases that
> > > used
> > > modprobe -r.   Issue is the drivers would call the targetport unregister
> > > calls, which would release the targetport once all the outstanding ios
> > > were
> > > cancelled to the lldd and the link-side association terminated, but the
> > > controllers are in a reconnecting and not yet torn down.
> > 
> > Did you mean a "nvme_reset_ctrl/nvme_delete_ctrl" is in progress?
> 
> no.  The delete won't happen till the reconnect timer expires.
> 
> > 
> > >  From the drivers point of view, they are unlinked. Thus it was
> > > intended the driver could unregister/unload/reload/reregister and if
> > > possible reconnect - allowing the nvme device to never be deleted. Given
> > > the lack of module reference, when the driver module left, so did the
> > > transport module, even with the live data structures.
> > > 
> > 
> > Thanks for the explanation. This reminds me of a similar issue we hit. The
> > fix under consideration was to wait in nvme_fc module exit to quiesce
> > rport/lport before proceeding.
> > 
> > Anyway, with the fix above, I am wondering, if nvme_fc is active for a
> > brief time just after the unload of LLD, the unload of nvme_fc would fail
> > (saying in use), wouldn't it? If so, in addition to the above fix, a
> > quiesce (flush) of such threads during module exit would give "modprobe
> > -r" a better chance to unload both modules.
> > 
> > Thoughts?
> > 
> > -Arun
> 
> True, the driver would unload but not the transport, but that's intended as
> we're trying to allow the driver to reload and not delete the nvme device in
> the system. If the device deletes, as there may be real consumers of it, they
> will die if not multipathed. A prime example is installing a new driver with a
> bug fix.  I'm far more interested in that behavior than making modprobe -r
> remove the most modules possible.
> 

That makes sense. With that design approach, I agree, waiting in module 
exit is not that required and a failed modprobe of nvme_fc for a short 
duration is not that big of a deal.

+1 for your patch.

-Arun

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
