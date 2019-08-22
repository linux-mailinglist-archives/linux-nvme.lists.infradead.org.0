Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5250299680
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 16:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GonuH+QA/QRgTH+oqQy595n/ubEhiCOwb+S0nznQQUc=; b=lF0sFtxxMejRXM
	oo8NmVzQFNo4AXUae/ghGSxtT+jdLD1D9ZpKI3GGy96hIaxi5L2K36G5CRVNXTYLz4wU1PQeCXj/Q
	V5mxTaykYM99glgiS1e4ZtolzqEgOcaU1rp0fNGREWbsGeM3qt/ObDE9viZzQuR8miaskjq5vl2S+
	YaDrHL/y2MIBceGSN2j7ibCI5vV4MI8quU1gTjh0h3dXiMsGa3+lYJgJaPeDqjBb8Yw59L9dxo9dJ
	smpUQDsj4cciydUz/LHbuiZNqpqo0C80ULbVtoc/ThGLui8H5aC7LKcP6PxZz53p2FEBKVLaY1B5m
	/WrV8BatNj2JTARQxuYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0o3h-0004b8-Mm; Thu, 22 Aug 2019 14:27:25 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0o3C-0004BG-Pr
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 14:26:56 +0000
Received: from pps.filterd (m0170392.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7MEPHmd015081; Thu, 22 Aug 2019 10:26:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=FmL9CDk9hnTPvlmI6P53KKfaYoPl334imtUe7ptgRpU=;
 b=XLJtvoIyvsYgie2K0lLKeuqc73gDaQ0u9R34QE2tZ71T5leH1MHAEYPuJDQG/hlWK4aZ
 OF9ptpwB1JsGvNiCdMGPoPQ7jd2PBmAtjUBwcgVIcbwga7TWp7wZoq5dtVuaPKp+xvBp
 18w2TLVjZ2FHKqB5ELHPTi9SjUJlRt8g+ogs4pgxOo+AoajjVsnH7Sjd2h6GmCsj52Wc
 6Ybs06lUlVWf3Ut8WgrF3uaVxEt6/uneFgRHW7gVDf/hb6kY9NbmmGB9lXLYHy2y+HD9
 XgV5nNr542jHHXlmeuow6hVJwDV9wdQ+ntac5vzRMvVJZ+l4SkwnYJCQwwT7Zy628fH5 WA== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 2uhuth8b3c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 22 Aug 2019 10:26:39 -0400
Received: from pps.filterd (m0134746.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7MEO9m2151912; Thu, 22 Aug 2019 10:26:39 -0400
Received: from mailuogwdur.emc.com (mailuogwdur.emc.com [128.221.224.79])
 by mx0a-00154901.pphosted.com with ESMTP id 2uhsy4aygd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 22 Aug 2019 10:26:39 -0400
Received: from maildlpprd56.lss.emc.com (maildlpprd56.lss.emc.com
 [10.106.48.160])
 by mailuogwprd53.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with
 ESMTP id x7MEPDqu028573
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 22 Aug 2019 10:26:37 -0400
X-DKIM: OpenDKIM Filter v2.4.3 mailuogwprd53.lss.emc.com x7MEPDqu028573
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=emc.com; s=jan2013;
 t=1566483997; bh=5PJtR+BdkoHbQI3fmb1TsRAo/jM=;
 h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
 Content-Type:Content-Transfer-Encoding:MIME-Version;
 b=SYpDWxbTtjBaG5AVAEuGPhpgSTrCPbGbUt/F8OD8/mshYrn+UAzVAycJUqRtYoLLQ
 dC6RiFk63ykWZl/c8i0Zs6uJEN8cqFDH6l6ZtPgj84/wJu2ReUDHRDU6CidTl2RQCg
 5abwXCnUr0fKpJHWtrQ/Coa3OsT/G0UDB/YrQwXI=
Received: from mailusrhubprd51.lss.emc.com (mailusrhubprd51.lss.emc.com
 [10.106.48.24]) by maildlpprd56.lss.emc.com (RSA Interceptor);
 Thu, 22 Aug 2019 10:22:51 -0400
Received: from MXHUB315.corp.emc.com (MXHUB315.corp.emc.com [10.146.3.93])
 by mailusrhubprd51.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with
 ESMTP id x7MEMorc021087
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=FAIL);
 Thu, 22 Aug 2019 10:22:52 -0400
Received: from MX302CL04.corp.emc.com ([fe80::18ad:6300:21eb:2b39]) by
 MXHUB315.corp.emc.com ([10.146.3.93]) with mapi id 14.03.0439.000; Thu, 22
 Aug 2019 10:22:50 -0400
From: "Engel, Amit" <Amit.Engel@Dell.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: RE: [PATCH] nvme/target/admin-cmd.c: Fix a bug in
 'nvmet_execute_get_log_page_error'
Thread-Topic: [PATCH] nvme/target/admin-cmd.c: Fix a bug in
 'nvmet_execute_get_log_page_error'
Thread-Index: AQHVV+rhGH+z1ZJ98kqkpi+ZAD2lWKcGiGKAgAA23nCAAHpT0A==
Date: Thu, 22 Aug 2019 14:22:49 +0000
Message-ID: <8739B0CD2FC2DC40AF691A1CCBB9896034606E73@MX302CL04.corp.emc.com>
References: <20190821063711.1252-1-amit.engel@dell.com>
 <20190821234559.GB27887@infradead.org>
 <8739B0CD2FC2DC40AF691A1CCBB9896034606D14@MX302CL04.corp.emc.com>
In-Reply-To: <8739B0CD2FC2DC40AF691A1CCBB9896034606D14@MX302CL04.corp.emc.com>
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
X-Sentrion-Hostname: mailusrhubprd51.lss.emc.com
X-RSA-Classifications: public
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-22_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908220148
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908220148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_072655_123379_83D3C076 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.133.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

For example,
when using a host with kernel version 4.14.54 and a target with kernel version 5.2.9:

Host:
[root@r-g0001-b ~]# uname -a
Linux r-g0001-b.xiolab.lab.emc.com 4.14.54 #1 SMP Wed Jul 11 14:54:23 IDT 2018 x86_64 x86_64 x86_64 GNU/Linux 
[root@r-g0001-b ~]# nvme error-log /dev/nvme8n1 -e 4
NVMe Status:Unknown(600f)

This is the case where nvmet_copy_to_sgl exceeds the request data_len
The target driver is not protected from this case 

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
