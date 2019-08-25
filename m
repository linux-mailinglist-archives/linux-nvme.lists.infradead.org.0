Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF699C30D
	for <lists+linux-nvme@lfdr.de>; Sun, 25 Aug 2019 13:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4IwMjQnPp6EMe0kiEDwzTpJAFFhaTJkrlcMPMpdn5Mk=; b=SsY3elAiL3AEwg
	mNBpdYGKbctIPgv3NpYKyyMpTq9WLsZsa2C2UmxDxhNqhTyVUVnkKLLrEsqoq830PhQZhrtstRhRD
	30WWvuBjLoLG1T+0MI/eR5IaW80huyRtpeeQCtLegMv2XMT09iTa0Fo7U9IbMm4wLVgc12AveKAsn
	jAU2lPJ7vz1fv7ujE0YuOpqHXVZbzB4YBwYbSXOjEjgSKmepxIPh6yH6FfsZuJcsEIkYWKQFPwbD3
	naAiX5cO48UsTSbWqps7M0RLv1brnp8an1BHDKuie6WsXuU6uqBqOXBKAT1yR4UiPg2ZNreais71c
	JI25mjew4QEmz2iVb2xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1qlz-0005Rm-Ua; Sun, 25 Aug 2019 11:33:28 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1qlm-0005Qz-Aq
 for linux-nvme@lists.infradead.org; Sun, 25 Aug 2019 11:33:15 +0000
Received: from pps.filterd (m0170390.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x7PBTr8l029602; Sun, 25 Aug 2019 07:32:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=wZB4ujqithNNH1yzz/OW4xt+t8ic8XMzeb96Cg8N0lY=;
 b=M2fBAO9M+jQxR+wDFW5C+1UkDWVq/2a1QjYdXmcCMRPtgQjTvMdPxyONWmpyreO8deYa
 R1S6ArZ5/SWoT1lHbs7zhTZ+ovvZmavRgr5DeEx4kjWa42Iw8NGuBArmn4QyCXFsPDbB
 XGDNEgwaLJCYWi0z6EPy/AhD4rK3wEXI6i8Cg9FSlIamBqC/KIYaKEc6vM7HUGiQHgcz
 ECMPe4afVqMCdfce3LtjjoKy4FbARmnContb5TiQssOzb5Elnd5oaVSbQuMk9dO7b+k1
 sb39bbxp/e8h7MBDg1DwKlq+7Ls6ymhOo5iO6AdO+aPcyLJEuA0odEk2kXtzq2sz0Q3h hQ== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 2uk2xc2m06-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 25 Aug 2019 07:32:55 -0400
Received: from pps.filterd (m0142699.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x7PBWtHu140081; Sun, 25 Aug 2019 07:32:55 -0400
Received: from mailuogwdur.emc.com (mailuogwdur.emc.com [128.221.224.79])
 by mx0a-00154901.pphosted.com with ESMTP id 2ukj623q3t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 25 Aug 2019 07:32:54 -0400
Received: from maildlpprd55.lss.emc.com (maildlpprd55.lss.emc.com
 [10.106.48.159])
 by mailuogwprd53.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with
 ESMTP id x7PBWaAG004572
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sun, 25 Aug 2019 07:32:45 -0400
X-DKIM: OpenDKIM Filter v2.4.3 mailuogwprd53.lss.emc.com x7PBWaAG004572
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=emc.com; s=jan2013;
 t=1566732766; bh=nkI9TkGqAtiuxnPguMKKWvkc2lI=;
 h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
 Content-Type:Content-Transfer-Encoding:MIME-Version;
 b=cyT1mM5tEmtuBPwqGFuFvnmrtk2zA+ZcOqo5HlJqjepFtr/517W4/9HKb3/H9Ev+R
 +kUui4T5H130Qog47YoXxPswqbJo1y8WXvUygwHymH8ZFaQZ2hlm23LoxLounV8UDH
 gcxG51kEmRqHHAZ+hC9DIakCBfctzQV7JJlo8ToU=
Received: from mailusrhubprd01.lss.emc.com (mailusrhubprd01.lss.emc.com
 [10.253.24.19]) by maildlpprd55.lss.emc.com (RSA Interceptor);
 Sun, 25 Aug 2019 07:31:59 -0400
Received: from MXHUB320.corp.emc.com (MXHUB320.corp.emc.com [10.146.3.98])
 by mailusrhubprd01.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with
 ESMTP id x7PBVkHq008515
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=FAIL);
 Sun, 25 Aug 2019 07:31:59 -0400
Received: from MX302CL04.corp.emc.com ([fe80::18ad:6300:21eb:2b39]) by
 MXHUB320.corp.emc.com ([10.146.3.98]) with mapi id 14.03.0439.000; Sun, 25
 Aug 2019 07:31:51 -0400
From: "Engel, Amit" <Amit.Engel@Dell.com>
To: Christoph Hellwig <hch@infradead.org>, "sagi@grimberg.me"
 <sagi@grimberg.me>
Subject: RE: [PATCH] nvme/target/admin-cmd.c: Fix a bug in
 'nvmet_execute_get_log_page_error'
Thread-Topic: [PATCH] nvme/target/admin-cmd.c: Fix a bug in
 'nvmet_execute_get_log_page_error'
Thread-Index: AQHVV+rhGH+z1ZJ98kqkpi+ZAD2lWKcGiGKAgAA23nCAAHpT0IAEh6nQ
Date: Sun, 25 Aug 2019 11:31:51 +0000
Message-ID: <8739B0CD2FC2DC40AF691A1CCBB989603460714F@MX302CL04.corp.emc.com>
References: <20190821063711.1252-1-amit.engel@dell.com>
 <20190821234559.GB27887@infradead.org>
 <8739B0CD2FC2DC40AF691A1CCBB9896034606D14@MX302CL04.corp.emc.com>
 <8739B0CD2FC2DC40AF691A1CCBB9896034606E73@MX302CL04.corp.emc.com>
In-Reply-To: <8739B0CD2FC2DC40AF691A1CCBB9896034606E73@MX302CL04.corp.emc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Amit.Engel@emc.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-08-22T07:10:19.4121496Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual;
 aiplabel=External Public
x-originating-ip: [10.76.81.143]
MIME-Version: 1.0
X-Sentrion-Hostname: mailusrhubprd01.lss.emc.com
X-RSA-Classifications: public
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-25_08:2019-08-23,2019-08-25 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0
 impostorscore=0 mlxscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 phishscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1908250134
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 adultscore=0 spamscore=0
 impostorscore=0 clxscore=1015 mlxscore=0 malwarescore=0 suspectscore=0
 bulkscore=0 mlxlogscore=999 priorityscore=1501 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1906280000
 definitions=main-1908250134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_043314_378295_64086644 
X-CRM114-Status: GOOD (  14.57  )
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi, Any update regarding my below fix proposal?

Thanks
Amit

-----Original Message-----
From: Engel, Amit 
Sent: Thursday, August 22, 2019 5:23 PM
To: 'Christoph Hellwig'
Cc: 'sagi@grimberg.me'; 'linux-nvme@lists.infradead.org'
Subject: RE: [PATCH] nvme/target/admin-cmd.c: Fix a bug in 'nvmet_execute_get_log_page_error'

For example,
when using a host with kernel version 4.14.54 and a target with kernel version 5.2.9:

Host:
[root@r-g0001-b ~]# uname -a
Linux r-g0001-b.xiolab.lab.emc.com 4.14.54 #1 SMP Wed Jul 11 14:54:23 IDT 2018 x86_64 x86_64 x86_64 GNU/Linux [root@r-g0001-b ~]# nvme error-log /dev/nvme8n1 -e 4 NVMe Status:Unknown(600f)

This is the case where nvmet_copy_to_sgl exceeds the request data_len The target driver is not protected from this case 

Thanks,
Amit
-----Original Message-----
From: Engel, Amit
Sent: Thursday, August 22, 2019 10:10 AM
To: 'Christoph Hellwig'
Cc: sagi@grimberg.me; linux-nvme@lists.infradead.org
Subject: RE: [PATCH] nvme/target/admin-cmd.c: Fix a bug in 'nvmet_execute_get_log_page_error'

Hi,

With the current nvmet_execute_get_log_page_error implementation, I could not run successfully lid NVME_LOG_ERROR command without this check.

(Of course this issue does not exist on kernel versions where the implementation is
nvmet_execute_get_log_page_noop)

Thanks,
Amit

-----Original Message-----
From: Christoph Hellwig <hch@infradead.org>
Sent: Thursday, August 22, 2019 2:46 AM
To: Engel, Amit
Cc: sagi@grimberg.me; linux-nvme@lists.infradead.org
Subject: Re: [PATCH] nvme/target/admin-cmd.c: Fix a bug in 'nvmet_execute_get_log_page_error'


[EXTERNAL EMAIL] 

I don't think we should need this check.  nvmet_copy_to_sgl uses sg_pcopy_from_buffer to copy the buffer, which uses the SGL iterators to copy, and the SGL is build only for the range cover by data_len.

Did you see an issue that prompted you to prepare this patch?  In that case we might have a problem in the data_len validation earlier on.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
