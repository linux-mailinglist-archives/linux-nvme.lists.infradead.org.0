Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8501319527
	for <lists+linux-nvme@lfdr.de>; Fri, 10 May 2019 00:20:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PqyBFOFvi/k+/lKqenBRf/4KdXISIPTbNQdSgeBGAk=; b=asePLne6KrAIAq
	55sZDzMD72H2COMJaAKvCXCWlTrgZhUfdfmHXamzGbpIQPewc3ZmOj69tdtB9PSIaOe/K7JVQUG/W
	uWk6bQVVlL1yTUM/rsgLElBm2F3Iy8yPThc7/jiETCvlNpmDaYuIl9izT67GmTiiQATLiaaSDvje4
	6mA5BSw0AgAnK6ffjun/qlLWD4tWZD9u5lbu+lyJB7gntchZIM/j4O7YMVtUpaXyaA8/d1nedWA8o
	enJ06MvzWGkkPZGidrqxmV/oKovSS7chhnyNtt8gDsNa3DKs1NsJ0DIe8p1U8+Qyhxou5pyihDgJ/
	34yd6i/3mKpObRfnWLIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOrOX-00069v-Bu; Thu, 09 May 2019 22:20:05 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOrOP-00069R-Sl
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 22:19:59 +0000
Received: from pps.filterd (m0170395.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x49MF4rN016236
 for <linux-nvme@lists.infradead.org>; Thu, 9 May 2019 18:19:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=K9cqzmRV2uaZUgOsZ4hzM/AFUcjgV9eO8YboIz/FZao=;
 b=datqtN+7mHmjm2u/DNkcoS6M4f7iV6b470ZMKWB4R5Rlli1AW0370VH0PTy13r+qPuTY
 TS7+u6ORwUnqZMumJtLLAjvWLsLRNvDeulY5Z6nzh3TKhp+R4Jqs/Z5SUcxDIhVWc2lL
 wytlaq3LFh3kwUItxVGMcIdiM1bApslPymeBTJoPCL+2jaDhXSTCNopPPJOAFo3fLYN/
 Dembf2xp9omP8sDcViGg5HN44lk1iA0Qj/+YIpjGHaSRHYSetsyErc0FVUZ91zQNUoOn
 1VIIOe4rr4vhnqnTgkc9qSkQIUSfbCGiqx8eUdOz+RIzHLX2giuCqlGukPqYa9+VUBgI RQ== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 2scbj2unpc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Thu, 09 May 2019 18:19:56 -0400
Received: from pps.filterd (m0144104.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x49MHx4G008263
 for <linux-nvme@lists.infradead.org>; Thu, 9 May 2019 18:19:56 -0400
Received: from ausxippc101.us.dell.com (ausxippc101.us.dell.com
 [143.166.85.207])
 by mx0b-00154901.pphosted.com with ESMTP id 2scq2enndt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Thu, 09 May 2019 18:19:56 -0400
X-LoopCount0: from 10.166.132.127
X-IronPort-AV: E=Sophos;i="5.60,346,1549951200"; d="scan'208";a="1233931848"
From: <Mario.Limonciello@dell.com>
To: <kbusch@kernel.org>
Subject: RE: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
Thread-Topic: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
Thread-Index: AQHVBdBS/xizqbOjGUOY5SKUREVH6KZh7T4AgAAD4gD//6zksIAAWSuA//+yBvCAAPthgIAACiqAgAAmlACAAAnmAIAAA8eAgAAJFgCAAADiAIAAGKaA///lboAAEvm1AAAGPtNA///21YCAAFIOcA==
Date: Thu, 9 May 2019 22:19:53 +0000
Message-ID: <495d76c66aec41a8bfbbf527820f8eb9@AUSX13MPC101.AMER.DELL.COM>
References: <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
 <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
 <20190509103142.GA19550@lst.de>
 <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
 <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
 <20190509192807.GB9675@localhost.localdomain>
 <7a002851c435481593f8629ec9193e40@AUSX13MPC101.AMER.DELL.COM>
 <20190509215409.GD9675@localhost.localdomain>
In-Reply-To: <20190509215409.GD9675@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.242.75]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905090127
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905090127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_151958_100789_3955BBE0 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [148.163.137.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: keith.busch@intel.com, rafael.j.wysocki@intel.com, sagi@grimberg.me,
 linux-pm@vger.kernel.org, rafael@kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, kai.heng.feng@canonical.com,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Keith Busch <kbusch@kernel.org>
> Sent: Thursday, May 9, 2019 4:54 PM
> To: Limonciello, Mario
> Cc: kai.heng.feng@canonical.com; hch@lst.de; axboe@fb.com;
> sagi@grimberg.me; rafael@kernel.org; linux-pm@vger.kernel.org;
> rafael.j.wysocki@intel.com; linux-kernel@vger.kernel.org; linux-
> nvme@lists.infradead.org; keith.busch@intel.com
> Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3 on
> Suspend-to-Idle
> 
> 
> [EXTERNAL EMAIL]
> 
> On Thu, May 09, 2019 at 09:37:58PM +0000, Mario.Limonciello@dell.com wrote:
> > > +int nvme_set_power(struct nvme_ctrl *ctrl, unsigned npss)
> > > +{
> > > +	int ret;
> > > +
> > > +	mutex_lock(&ctrl->scan_lock);
> > > +	nvme_start_freeze(ctrl);
> > > +	nvme_wait_freeze(ctrl);
> > > +	ret = nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, npss, NULL, 0,
> > > +				NULL);
> > > +	nvme_unfreeze(ctrl);
> > > +	mutex_unlock(&ctrl->scan_lock);
> > > +
> > > +	return ret;
> > > +}
> > > +EXPORT_SYMBOL_GPL(nvme_set_power);
> >
> > I believe without memory barriers at the end disks with HMB this will
> > still kernel panic (Such as Toshiba BG3).
> 
> Well, the mutex has an implied memory barrier, but your HMB explanation
> doesn't make much sense to me anyway. The "mb()" in this thread's original
> patch is a CPU memory barrier, and the CPU had better not be accessing
> HMB memory. Is there something else going on here?

Kai Heng will need to speak up a bit in his time zone as he has this disk on hand,
but what I recall from our discussion was that DMA operation MemRd after
resume was the source of the hang.

> 
> > This still allows D3 which we found at least failed to go into deepest state and
> blocked
> > platform s0ix for the following SSDs (maybe others):
> > Hynix PC601
> > LiteOn CL1
> 
> We usually write features to spec first, then quirk non-compliant
> devices after.

NVME spec doesn't talk about a relationship between SetFeatures w/
NVME_FEAT_POWER_MGMGT and D3 support, nor order of events.

This is why we opened a dialog with storage vendors, including contrasting the behavior
of Microsoft Windows inbox NVME driver and Intel's Windows RST driver.

Those two I mention that come to mind immediately because they were most recently
tested to fail.  Our discussion with storage vendors overwhelmingly requested
that we don't use D3 under S2I because their current firmware architecture won't
support it.

For example one vendor told us with current implementation that receiving D3hot
after NVME shutdown will prevent being able to enter L1.2.  D3hot entry was supported
by an IRQ handler that isn't serviced in NVME shutdown state.

Another vendor told us that with current implementation it's impossible to transition
to PS4 (at least via APST) while L1.2 D3hot is active.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
