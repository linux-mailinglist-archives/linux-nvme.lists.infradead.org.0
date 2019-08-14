Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAC08DE12
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 21:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zabMiCSgqOAAO1Yb5nO6fvzU6QT+C3PJ2IdiyoXXJoM=; b=MkuCDhYW+wLrQA
	9rV8oPiXKAuDTRAFXU4VDpNg4EERwrMFtJlTg26ZQB5C47HIcAKbcgBQWgZL9HCpGi2gbVDNaa1wv
	px0uRCGUemztnAw/+mxTctSmu3i7gB97yPpsLwNpd9s/ujxbwPZeZFa5jHOEr5+Uu9pZWKLT0tm0U
	701xiwqpcVDRSSWnmh7BNMqHrazeOLILCRgX3xLE8BOrincYXh6R/DYO2FI4NB4r69uqRNJrDhcQM
	cCGc2viVDj2I7XhjGczEVfriRDuCRNmXibjJ3yMzpGM1roM38IYd/e0CaQkNlp50u3EvLWBEOFAUC
	YLgKTCFnnwZIUjc+RJFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxzJP-0000QL-84; Wed, 14 Aug 2019 19:51:59 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxzJH-0000Pr-Lv
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 19:51:53 +0000
Received: from pps.filterd (m0170389.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7EJnV8p005718
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 15:51:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=8Q43YGR3tfZ4a9VaNxsgSZhTryTR5oYY2YB8ljQh0Kc=;
 b=c3acLBXJbVW4FcrfhBV22F4l36zucjtue4UPcdEvtWJDwqu1AoSWTg8uU6uHKCbuDj4R
 uwjpybk+CffpxPW462Tk1urE/jPzzaEXHLu7C9p1GmywP5+8+S1XGjpXv8WHdfn13qvw
 e5BdhR/KgWmSbptHFZzQNoIk/6FjM9jz9D86N9yHZNjByopHCjHgg7qY6TfFNobWHMcR
 q55qvQvVmv0ZvoSByYgHc+LNP5zs4nxRiyDwY7EqBtirbqwMIxwFi4dWzPiKiw/QS/eO
 SeW46GWQ16Bqyy9dawOH8oCqQDgNDRJ6YTWJPNcVATTrUBF/zwJQYxtbDu8Ae0saoqtf /Q== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 2ucg1jtg2j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 15:51:49 -0400
Received: from pps.filterd (m0142699.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7EJhfSZ001395
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 15:51:48 -0400
Received: from ausxipps306.us.dell.com (AUSXIPPS306.us.dell.com
 [143.166.148.156])
 by mx0a-00154901.pphosted.com with ESMTP id 2ucpn1t6kw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 15:51:48 -0400
X-LoopCount0: from 10.166.132.55
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="360757861"
From: <Mario.Limonciello@dell.com>
To: <kbusch@kernel.org>
Subject: RE: [PATCH] nvme: Add quirk for LiteON CL1 devices running FW 22301111
Thread-Topic: [PATCH] nvme: Add quirk for LiteON CL1 devices running FW
 22301111
Thread-Index: AQHVUro4qx6m+BDuG0mXVmnmQvARiqb7XB4A//+u5dA=
Date: Wed, 14 Aug 2019 19:51:46 +0000
Message-ID: <3f5dec208f334839b56ae63bb1a3e6f3@AUSX13MPC105.AMER.DELL.COM>
References: <1565798749-15672-1-git-send-email-mario.limonciello@dell.com>
 <20190814193132.GD3256@localhost.localdomain>
In-Reply-To: <20190814193132.GD3256@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-08-14T19:51:44.4791540Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual;
 aiplabel=External Public
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-14_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908140178
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908140179
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_125151_773960_514D10B6 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.133.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Crag.Wang@dell.com, sagi@grimberg.me, sjg@google.com,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, axboe@fb.com,
 Ryan.Hong@Dell.com, Jared.Dominguez@dell.com, Charles.Hyde@dellteam.com,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Keith Busch <kbusch@kernel.org>
> Sent: Wednesday, August 14, 2019 2:32 PM
> To: Limonciello, Mario
> Cc: Jens Axboe; Christoph Hellwig; Sagi Grimberg; linux-
> nvme@lists.infradead.org; LKML; Hong, Ryan; Wang, Crag; sjg@google.com;
> Hyde, Charles - Dell Team; Dominguez, Jared
> Subject: Re: [PATCH] nvme: Add quirk for LiteON CL1 devices running FW
> 22301111
> 
> 
> [EXTERNAL EMAIL]
> 
> On Wed, Aug 14, 2019 at 09:05:49AM -0700, Mario Limonciello wrote:
> > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > index 8f3fbe5..47c7754 100644
> > --- a/drivers/nvme/host/core.c
> > +++ b/drivers/nvme/host/core.c
> > @@ -2251,6 +2251,29 @@ static const struct nvme_core_quirk_entry
> core_quirks[] = {
> >  		.vid = 0x1179,
> >  		.mn = "THNSF5256GPUK TOSHIBA",
> >  		.quirks = NVME_QUIRK_NO_APST,
> > +	},
> > +	/*
> > +	 * This LiteON CL1 firmware version has a race condition associated with
> > +	 * actions related to suspend to idle.  LiteON has resolved the problem
> > +	 * in future firmware.
> > +	 */
> > +	{
> > +		.vid = 0x14a4,
> > +		.mn = "CL1-3D128-Q11 NVMe LITEON 128GB",
> > +		.fr = "22301111",
> > +		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
> > +	},
> > +	{
> > +		.vid = 0x14a4,
> > +		.mn = "CL1-3D256-Q11 NVMe LITEON 256GB",
> > +		.fr = "22301111",
> > +		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
> > +	},
> > +	{
> > +		.vid = 0x14a4,
> > +		.mn = "CL1-3D512-Q11 NVMe LITEON 512GB",
> > +		.fr = "22301111",
> > +		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
> >  	}
> >  };
> 
> Are there models from this vendor with this same 'fr' that don't need
> this quirk? If not, you can leave .mn blank and just use a single entry.

Yes, I confirmed this firmware version string is only used on the CL1 family
of devices.

I will send a v2 modifying this.  I also noticed that the
(ndev->ctrl.quirks & NVME_QUIRK_SIMPLE_SUSPEND)

is unnecessary in nvme_resume because ndev->last_ps is set to U32_MAX
in nvme_suspend, so I will remove that second modification.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
