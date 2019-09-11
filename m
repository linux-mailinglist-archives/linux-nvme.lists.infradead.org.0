Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BDFB048C
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Sep 2019 21:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZNYNwZmmmOgKh63Ela3wSEJM9KeN7bYi9pI7oSLmY4=; b=cXvSrBMfndW4nj
	suBtBTCMjd28369TL7xh5P47iq92LAuxPHqam+VlAj14qQWK1dEaypksXQkxSxT+ZiKcrtv6YJ1w4
	oIHvvKH0fCaXfh2eg0JfYwXZzLDLeUCttFtHPqm7T+xvQ2EfUBiTQnU8YnLKfNlY++2wlVdQiwNSB
	O9uWyDvgvDgH3MWUvR75Ob4sHCk6K1J1La8fxD88Nt1DItEIlyeqZ6VQFkQmEYTmUKfw9zCXlG2TM
	FnHkKHDtJSHT1Qii7IGAFbeDzu3lZenbi4Y2c3Q/cgXm7YlZd95nxFPuLNH4xHr7MebvIJ2stkWTC
	hGHUCFOfWe9CWCLm1aYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i88CR-0004TS-CX; Wed, 11 Sep 2019 19:22:43 +0000
Received: from [148.163.137.20] (helo=mx0b-00154904.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i88CD-0004SQ-4k
 for linux-nvme@lists.infradead.org; Wed, 11 Sep 2019 19:22:30 +0000
Received: from pps.filterd (m0170397.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8BJKCjQ028083; Wed, 11 Sep 2019 15:21:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=sJYIbEHzCASI4lpYFp9UZ5PXp/y89gQYlgw9WSs223k=;
 b=oRHpS5wMu7zD7P5XDhfj9N7A21D3qJuC0llPJfquNiF7eSqSE3GivS6RPYFmc7rteV3M
 N8erwq+nbgpnvcDty4BCeRKx/ImeZOfYaXaC6hBUKpdUMX1MK80RvdGAeUxUIkiwMJFo
 CdUqPcmX60jp+uSzUM5TKPhWNAl3O7hSYxIfwEvYkpzJ8RvqQkntg0B/6f2AgCHhCq4e
 hgCExpg8fIMp7EXcZG1kgqgfYCN1ELw283EVPb4SuZMrqv4IUeKCli28+WSh0Hb1rMTn
 2zjINwRPo/HET/7+Xp6gTncXocXS71LbKmkgqMlUxaH76Ub8smmOD0pdZhXWPQrVV/8D SQ== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 2uv5mweyrp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 11 Sep 2019 15:21:15 -0400
Received: from pps.filterd (m0144104.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8BJIgwf022716; Wed, 11 Sep 2019 15:21:15 -0400
Received: from mailuogwhop.emc.com (mailuogwhop.emc.com [168.159.213.141])
 by mx0b-00154901.pphosted.com with ESMTP id 2uxjdv325r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 11 Sep 2019 15:21:15 -0400
Received: from maildlpprd03.lss.emc.com (maildlpprd03.lss.emc.com
 [10.253.24.35])
 by mailuogwprd02.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with
 ESMTP id x8BJKtjQ025864
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 11 Sep 2019 15:21:14 -0400
X-DKIM: OpenDKIM Filter v2.4.3 mailuogwprd02.lss.emc.com x8BJKtjQ025864
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=emc.com; s=jan2013;
 t=1568229674; bh=HriEnvfDZLSVhAFsoD+zdLhoQDY=;
 h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
 Content-Type:Content-Transfer-Encoding:MIME-Version;
 b=GjTtA9iXnqV46JPXRFeTQbX0AX31sV13an3OynAbMZPwVmctvrMMdHGk9IwP8oZFL
 9xBpCaFifcb3GzSQduo4B2PYCNGmHc/QX3Bce2qv2Nx3P86NCAxKOz37b4N8MFygf6
 iaND8ZjUJuKjm3s4OMSJ1r2JXfKaYNhEg7XgSrR4=
Received: from mailusrhubprd51.lss.emc.com (mailusrhubprd51.lss.emc.com
 [10.106.48.24]) by maildlpprd03.lss.emc.com (RSA Interceptor);
 Wed, 11 Sep 2019 15:19:31 -0400
Received: from MXHUB312.corp.emc.com (MXHUB312.corp.emc.com [10.146.3.90])
 by mailusrhubprd51.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with
 ESMTP id x8BJJVRi025555
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=FAIL);
 Wed, 11 Sep 2019 15:19:31 -0400
Received: from MX302CL04.corp.emc.com ([fe80::18ad:6300:21eb:2b39]) by
 MXHUB312.corp.emc.com ([10.146.3.90]) with mapi id 14.03.0439.000; Wed, 11
 Sep 2019 15:19:32 -0400
From: "Engel, Amit" <Amit.Engel@Dell.com>
To: Christoph Hellwig <hch@infradead.org>, "sagi@grimberg.me"
 <sagi@grimberg.me>
Subject: RE: [PATCH] nvmet: fix a wrong error status returned in error log page
Thread-Topic: [PATCH] nvmet: fix a wrong error status returned in error log
 page
Thread-Index: AQHVYCzrqpORZZYTjEisFVH6xiRa2KcbyCeA///DvnCAAF8vgP//9MnQgAsK/9A=
Date: Wed, 11 Sep 2019 19:19:30 +0000
Message-ID: <8739B0CD2FC2DC40AF691A1CCBB9896034611F97@MX302CL04.corp.emc.com>
References: <20190831185006.119748-1-amit.engel@dell.com>
 <20190904131447.GA9892@infradead.org>
 <8739B0CD2FC2DC40AF691A1CCBB9896034610E40@MX302CL04.corp.emc.com>
 <20190904151947.GA11034@infradead.org>
 <8739B0CD2FC2DC40AF691A1CCBB9896034610EBC@MX302CL04.corp.emc.com>
In-Reply-To: <8739B0CD2FC2DC40AF691A1CCBB9896034610EBC@MX302CL04.corp.emc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Amit.Engel@emc.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-09-04T18:40:35.5467522Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual;
 aiplabel=External Public
x-originating-ip: [10.76.43.8]
MIME-Version: 1.0
X-Sentrion-Hostname: mailusrhubprd51.lss.emc.com
X-RSA-Classifications: public
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-11_08:2019-09-11,2019-09-11 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 mlxscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 spamscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 mlxlogscore=999
 adultscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1906280000 definitions=main-1909110178
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 bulkscore=0
 mlxlogscore=999 adultscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0 spamscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1909110178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_122229_408667_77B1CE29 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.137.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Christoph/Sagi,

Any estimation when this patch will be pushed upstream officially?

Thanks
Amit

-----Original Message-----
From: Engel, Amit 
Sent: Wednesday, September 4, 2019 9:41 PM
To: 'Christoph Hellwig'
Cc: sagi@grimberg.me; linux-nvme@lists.infradead.org
Subject: RE: [PATCH] nvmet: fix a wrong error status returned in error log page

Ok, Done

Thanks
Amit

-----Original Message-----
From: Christoph Hellwig <hch@infradead.org> 
Sent: Wednesday, September 4, 2019 6:20 PM
To: Engel, Amit
Cc: Christoph Hellwig; sagi@grimberg.me; linux-nvme@lists.infradead.org
Subject: Re: [PATCH] nvmet: fix a wrong error status returned in error log page


[EXTERNAL EMAIL] 

On Wed, Sep 04, 2019 at 02:05:16PM +0000, Engel, Amit wrote:
> Should I provide a patch according to your suggestion?

Yes, please do.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
