Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB7190879
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 21:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pL9AmPcwbTKGEAy3a4fj6pLW45TfUuxZ6tD79OVisIA=; b=YR5kJNXbFb07Or
	8cYad2W4jEpF5Dc9RfNynV/IzeZa4OYxONXmBBg3qLL+ItD85dxqiAiyxj97wq+IIcmUyyGayxYNt
	CkZfRpMwD1JvLrVANzdkDZKGRnR+Ca0iqJhLIvZDxj0kfR+LYgwFXJgFw/oZk7fmEQ6OGV9fumK2J
	MHlYwD3HN52uPBRQvdJTWC5iVZ0sBbKWqPlOd7ZqPh5fVwOTMKFeVoRJU4JNh0NdtqHVPPDTVN2ve
	YxDmSOFaGZOr0Tzfqpb8Xx1XI2eaWGKaraQ3OkEzIajmpTBr9wjoonkbJx1H2t5cIDXk7z+FzSGrk
	oU0REs3dgfwxx8C5LF6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyi83-0008GQ-FT; Fri, 16 Aug 2019 19:43:15 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyi7w-0008F1-NX
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 19:43:10 +0000
Received: from pps.filterd (m0170389.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7GJdWcu005317
 for <linux-nvme@lists.infradead.org>; Fri, 16 Aug 2019 15:43:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=75uUmEH4Q9NaBwE5QK1ZFzvxK4yibdNYpYfkpFIzpC4=;
 b=fypyVilnq9G8t7N2i+28/8NPA6hy/r4Fmz2ZDIRhNegLjFcZn6ULRjoi4GtkZfIkgAOr
 Lp76mtDeR5xHvZrYfbrgVdEmGSDSFVAd+dKYHtZMq4lT9LXRzhbGJyrNDPz1yxBoqxG+
 iS8oTC7icCNEpP4hGFlUb6O5VKohqLLCEGuyYJi6AFjf9LBnS0UTEsvcwabRb0dEcbW3
 ysZp3AznqukCodqVNY3ruSIIsYtr0s9owrNQV/VBlk0N6ze3xAeVLmB/k3s9tmwFuNTi
 g5GprsmqEhtv3d/bkiNnUV4mh8V9NBdFOtyCOzmvxaG/eYuZrhdaT6m9QmYsHNnn4B6Z GA== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 2udj3h3x1d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Fri, 16 Aug 2019 15:43:05 -0400
Received: from pps.filterd (m0090351.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7GJcCfn064927
 for <linux-nvme@lists.infradead.org>; Fri, 16 Aug 2019 15:43:05 -0400
Received: from ausc60pc101.us.dell.com (ausc60pc101.us.dell.com
 [143.166.85.206])
 by mx0b-00154901.pphosted.com with ESMTP id 2udxn43xfd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Fri, 16 Aug 2019 15:43:04 -0400
X-LoopCount0: from 10.166.135.95
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="1454488023"
From: <Mario.Limonciello@dell.com>
To: <sagi@grimberg.me>, <kbusch@kernel.org>
Subject: RE: [PATCH v2] nvme: Add quirk for LiteON CL1 devices running FW
 22301111
Thread-Topic: [PATCH v2] nvme: Add quirk for LiteON CL1 devices running FW
 22301111
Thread-Index: AQHVUtwQRoMvFWyQNUuquaDdHeAiWqb7Z/MAgAABK4CAAWAOAIABZgWA
Date: Fri, 16 Aug 2019 19:43:02 +0000
Message-ID: <d71fc97ef6c8428f96ecfb2cec6077ab@AUSX13MPC101.AMER.DELL.COM>
References: <1565813304-16710-1-git-send-email-mario.limonciello@dell.com>
 <32f20898-b9af-eee0-97de-0a568de54b57@grimberg.me>
 <20190814201900.GA3511@localhost.localdomain>
 <0cafca37-011d-4c19-4462-14687046a153@grimberg.me>
In-Reply-To: <0cafca37-011d-4c19-4462-14687046a153@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-08-16T19:43:01.0419001Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual;
 aiplabel=External Public
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-16_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908160199
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908160199
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_124308_819708_83247916 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.133.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Crag.Wang@dell.com, sjg@google.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, Ryan.Hong@Dell.com,
 Jared.Dominguez@dell.com, Charles.Hyde@dellteam.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Sagi Grimberg <sagi@grimberg.me>
> Sent: Thursday, August 15, 2019 12:19 PM
> To: Keith Busch
> Cc: Limonciello, Mario; Jens Axboe; Christoph Hellwig; linux-
> nvme@lists.infradead.org; LKML; Hong, Ryan; Wang, Crag; sjg@google.com;
> Hyde, Charles - Dell Team; Dominguez, Jared
> Subject: Re: [PATCH v2] nvme: Add quirk for LiteON CL1 devices running FW
> 22301111
> 
> 
> [EXTERNAL EMAIL]
> 
> 
> >> Mario,
> >>
> >> Can you please respin a patch that applies cleanly on nvme-5.4?
> >
> > This fixes a regression we introduced in 5.3, so it should go in
> > 5.3-rc. For this to apply cleanly, though, we'll need to resync to Linus'
> > tree to get Rafael's PCIe ASPM check after he sends his linux-pm pull
> > request.
> 
> We need to coordinate with Jens, don't think its a good idea if I'll
> just randomly get stuff from linus' tree and send an rc pull request.

The dependent commit is in Linus' tree now.
4eaefe8c621c6195c91044396ed8060c179f7aae

Also it was reported to me after this was submitted that the comment
whitespace should have been aligned during the switchover from v1 to v2.

V1 the whitespace was further left since it was applying to 3 drives, but now
that they're combined in v2 the whitespace wasn't adjusted.

Let me know if you want me to resubmit v3 w/ whitespace modification or
if you will want to adjust that locally when you pull it in.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
