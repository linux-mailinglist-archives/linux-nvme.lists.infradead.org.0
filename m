Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD62B6F24
	for <lists+linux-nvme@lfdr.de>; Thu, 19 Sep 2019 00:00:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aezGiC20jqy+D36U5dzTOMbN7mclwqRptNntCA0GRMY=; b=qhVF01L/Ho0fy9
	6FBZMq88TNGuUZUxuyeMsUarzIZsKVozLBORBs8YqZa3Ij8UqPNi8zGxziM6Sn0QXF3uaWpVu536o
	z3UQ7b2Mw5oNCb7dUtpysB+WH3tlq0atpiPABiXkHscRvXSNzOhYyPIId5lp3zZW2gkMEW4ow2H/R
	xktJ3tdWWU11PRDtuFrbmZZKPBwD2axI9p0xJQvhJeeqQox04cjiHkB/8SN02qwBNoxe5EYlSOLp1
	f/jdYzyanjV2bEOtHGPnAm4I2FCqvVnSE91FANLFom4XxQhTv0Z+p4xJDJMsdLAEqa+Qy7EVtj8P+
	j8yO1swKV6xLpMK0HXbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAi00-0000ax-2t; Wed, 18 Sep 2019 22:00:32 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAhzp-0000aK-8Q
 for linux-nvme@lists.infradead.org; Wed, 18 Sep 2019 22:00:26 +0000
Received: from pps.filterd (m0170392.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8ILeWch001150
 for <linux-nvme@lists.infradead.org>; Wed, 18 Sep 2019 18:00:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=mwcq314j1xzpxON/v1/r1qDoVDn4xZuDEMCKyTYQaW4=;
 b=Lw52aHCVHb/Lgy1F/hZNxuqNd8bg67n9moZGC9CC2oDnJTMz1roNakSEJrDSSArOQmOA
 u5bjTyapsytrkLaqjME/XOIDvhJmgTaQMjzgiZER9Di/1k25wmf6mCU+vvr+uahgHXpw
 8P9vGwJbmHxlaqjRClx8Za+U5V/kBob/6uwgKgULvFcDqLaf9HMnMD8YN62/KkY3tQ9s
 Lah0yy6SXS8rZIgPzqalKrp4/Vji3xsPqG+W2b2r0h6nKK9dVh2x8cjPxhJwkyqaLrUe
 9a1j2/QQlZJpOLK8vX2nokHBf7UiA7Pg9EwE3P0fU/2TBkzMoYvplZHpPSgVLbTsK5M+ 6g== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 2v3vdxg4sb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Wed, 18 Sep 2019 18:00:18 -0400
Received: from pps.filterd (m0134746.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8ILcPnm022269
 for <linux-nvme@lists.infradead.org>; Wed, 18 Sep 2019 18:00:18 -0400
Received: from ausxipps301.us.dell.com (ausxipps301.us.dell.com
 [143.166.148.223])
 by mx0a-00154901.pphosted.com with ESMTP id 2v3vdgreb9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Wed, 18 Sep 2019 18:00:18 -0400
X-LoopCount0: from 10.166.132.72
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="398575294"
From: <Mario.Limonciello@dell.com>
To: <rjw@rjwysocki.net>
Subject: RE: [PATCH] nvme-pci: Save PCI state before putting drive into
 deepest state
Thread-Topic: [PATCH] nvme-pci: Save PCI state before putting drive into
 deepest state
Thread-Index: AQHVaPqcVa1BaYWKPkaPLLLTJYPQjqcyUq2A//+vI2CAAFgTgP//rLww
Date: Wed, 18 Sep 2019 22:00:13 +0000
Message-ID: <247e1ed126774d32b0d70092b65adb6a@AUSX13MPC105.AMER.DELL.COM>
References: <1568245353-13787-1-git-send-email-mario.limonciello@dell.com>
 <4858057.cjDlXVALXj@kreacher>
 <346fd9ced98e40229d0cc0871ad5ed32@AUSX13MPC105.AMER.DELL.COM>
 <10489808.bq04Fa26WH@kreacher>
In-Reply-To: <10489808.bq04Fa26WH@kreacher>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-09-18T22:00:11.6518964Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual;
 aiplabel=External Public
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-18_10:2019-09-18,2019-09-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0
 malwarescore=0 mlxscore=0 lowpriorityscore=0 phishscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 mlxlogscore=999
 clxscore=1015 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1908290000 definitions=main-1909180184
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 malwarescore=0 bulkscore=0
 impostorscore=0 lowpriorityscore=0 mlxlogscore=999 spamscore=0
 phishscore=0 mlxscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1909180184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_150023_926617_4CAFA7DE 
X-CRM114-Status: GOOD (  29.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.133.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Crag.Wang@dell.com, sagi@grimberg.me, linux-pm@vger.kernel.org,
 sjg@google.com, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, Ryan.Hong@Dell.com,
 kbusch@kernel.org, Jared.Dominguez@dell.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Rafael J. Wysocki <rjw@rjwysocki.net>
> Sent: Wednesday, September 18, 2019 4:57 PM
> To: Limonciello, Mario
> Cc: kbusch@kernel.org; axboe@fb.com; hch@lst.de; sagi@grimberg.me; linux-
> nvme@lists.infradead.org; linux-kernel@vger.kernel.org; Hong, Ryan; Wang,
> Crag; sjg@google.com; Dominguez, Jared; linux-pci@vger.kernel.org; linux-
> pm@vger.kernel.org
> Subject: Re: [PATCH] nvme-pci: Save PCI state before putting drive into deepest
> state
> 
> 
> [EXTERNAL EMAIL]
> 
> On Wednesday, September 18, 2019 11:43:28 PM CEST
> Mario.Limonciello@dell.com wrote:
> > > -----Original Message-----
> > > From: Rafael J. Wysocki <rjw@rjwysocki.net>
> > > Sent: Wednesday, September 18, 2019 4:31 PM
> > > To: Limonciello, Mario
> > > Cc: Keith Busch; Jens Axboe; Christoph Hellwig; Sagi Grimberg; linux-
> > > nvme@lists.infradead.org; LKML; Hong, Ryan; Wang, Crag; sjg@google.com;
> > > Dominguez, Jared; Linux PCI; Linux PM
> > > Subject: Re: [PATCH] nvme-pci: Save PCI state before putting drive into
> deepest
> > > state
> > >
> > >
> > > [EXTERNAL EMAIL]
> > >
> > > On Thursday, September 12, 2019 1:42:33 AM CEST Mario Limonciello wrote:
> > > > The action of saving the PCI state will cause numerous PCI configuration
> > > > space reads which depending upon the vendor implementation may cause
> > > > the drive to exit the deepest NVMe state.
> > > >
> > > > In these cases ASPM will typically resolve the PCIe link state and APST
> > > > may resolve the NVMe power state.  However it has also been observed
> > > > that this register access after quiesced will cause PC10 failure
> > > > on some device combinations.
> > > >
> > > > To resolve this, move the PCI state saving to before SetFeatures has been
> > > > called.  This has been proven to resolve the issue across a 5000 sample
> > > > test on previously failing disk/system combinations.
> > >
> > > This sounds reasonable to me, but it would be nice to CC that to linux-pm
> > > and/or linux-pci too.
> > >
> > > > Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
> > > > ---
> > > >  drivers/nvme/host/pci.c | 13 +++++++------
> > > >  1 file changed, 7 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> > > > index 732d5b6..9b3fed4 100644
> > > > --- a/drivers/nvme/host/pci.c
> > > > +++ b/drivers/nvme/host/pci.c
> > > > @@ -2894,6 +2894,13 @@ static int nvme_suspend(struct device *dev)
> > > >  	if (ret < 0)
> > > >  		goto unfreeze;
> > > >
> > > > +	/*
> > > > +	 * A saved state prevents pci pm from generically controlling the
> > > > +	 * device's power. If we're using protocol specific settings, we don't
> > > > +	 * want pci interfering.
> > > > +	 */
> > > > +	pci_save_state(pdev);
> > > > +
> > > >  	ret = nvme_set_power_state(ctrl, ctrl->npss);
> > > >  	if (ret < 0)
> > > >  		goto unfreeze;
> > > > @@ -2908,12 +2915,6 @@ static int nvme_suspend(struct device *dev)
> > >
> > > This is the case in which the PCI layer is expected to put the device into
> > > D3, so you need
> > >
> > > pdev->state_saved = 0;
> > >
> > > at this point, because you have saved the config space already.
> > >
> > > >  		ret = 0;
> > > >  		goto unfreeze;
> > >
> > > And here you don't need to jump to "unfreeze" any more.
> > >
> > > >  	}
> > > > -	/*
> > > > -	 * A saved state prevents pci pm from generically controlling the
> > > > -	 * device's power. If we're using protocol specific settings, we don't
> > > > -	 * want pci interfering.
> > > > -	 */
> > > > -	pci_save_state(pdev);
> > > >  unfreeze:
> > > >  	nvme_unfreeze(ctrl);
> > > >  	return ret;
> > > >
> > >
> > >
> > >
> >
> > Thanks, I actually followed up with something along that line in a v2 sent out
> > today.  My apology you weren't in CC, but here is a weblink to it.
> > http://lists.infradead.org/pipermail/linux-nvme/2019-September/027251.html
> >
> 
> I don't think that pci_load_saved_state() will work, because it sets
> state_saved at the end again (if all goes well).  You simply only need to
> clear state_saved here.

Explicitly calling it with NULL as the saved state to restore seemed to have that effect
of clearing state (there is an explicit check in there if it's NULL to just return 0).

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
