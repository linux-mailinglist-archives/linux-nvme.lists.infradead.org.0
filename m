Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B900998C49
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 09:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CdxG5fd3kOpyRynl4gk8LxuyegZFYp8ej7SaGBWEVA8=; b=oFkX7opIaulq/1
	rt4XpW6hmOy9smePbSl0P5NFpXSB3w8ehnqmc3RcIa5zUd19tlz2+zWsdagz2j1Ale5ch22CQLhkq
	8on4sxrrNSc1KyUYBG4pzojwi2R8+Dwf6C4+P3ycJnylIag3IHBYctevw0UzQSook2uoAmmUQ4J1P
	bhRCLF2yYjsy6zTIgJ0HPNYzngR3chdiqtpCg09ETypJYVUGcPtc2tO0A5UlXwhEo3c0t85fUxgZT
	5Dr4X8qOZi3HaymTYCVh8Di5aqgw53fxd83JofDzgfYbv7Lo7qkjX+r1Oaky62Z7BZ1JK4fya/Q42
	WuE65UEv4zqzLL/i1tRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0hI6-0007xO-C1; Thu, 22 Aug 2019 07:13:51 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0hHZ-0007vk-N3
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 07:13:19 +0000
Received: from pps.filterd (m0170395.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7M7AIYF004039; Thu, 22 Aug 2019 03:13:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=+BEDLEnWV3OUkEWww2505fRooPlUBc11D4NeWB151wg=;
 b=B2L4CB7RfcUQ0v+ou1erq59aVSC3Qng/8f9BLHw+nWiDcwR+Akm5oL1Wve/whAm+Ir+W
 xWIi2cfxpP1e0Mr6nnwXPONW62taVc4mfV579bAiqKJ61y4DwQq4NIBLIs1gKcUl48SH
 nmLKrL/BqtXvYZJtDYYq+2k9pCAIniXTiuWnXtWuZMqyKAo6o60e74c96GOhUALsMu+c
 MBbLW6zGsQSAN3zetPkYykKCLm7Oligo2pbB7OjCF0WzyNNEa91zEwdsB7+CHDg4o4E3
 XIs2qIpw4bqouIUXM3aDOMMXBbcy4+26jweMsyHA/C1pjDXmcgF+9YPxwnGTSdmUmXP4 0w== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 2uhd3723h2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 22 Aug 2019 03:13:00 -0400
Received: from pps.filterd (m0090351.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7M754IO015655; Thu, 22 Aug 2019 03:12:59 -0400
Received: from mailuogwdur.emc.com (mailuogwdur.emc.com [128.221.224.79])
 by mx0b-00154901.pphosted.com with ESMTP id 2uhnkpgqs4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 22 Aug 2019 03:12:59 -0400
Received: from maildlpprd55.lss.emc.com (maildlpprd55.lss.emc.com
 [10.106.48.159])
 by mailuogwprd52.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with
 ESMTP id x7M7C4TP011940
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 22 Aug 2019 03:12:58 -0400
X-DKIM: OpenDKIM Filter v2.4.3 mailuogwprd52.lss.emc.com x7M7C4TP011940
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=emc.com; s=jan2013;
 t=1566457978; bh=pJT9qEpC+WOj21ud229JpOvmdAI=;
 h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
 Content-Type:Content-Transfer-Encoding:MIME-Version;
 b=F0cM7W42LuAbgGE18Vzlx3S2+8eipRu/Ouq9jmumvMgK9yM1oQaxmd1PEBOkZ/iwg
 6ERooBTjLmyPsIBnX3nCUrD1dvGK/ptBDb4x5+Qq6itCLs1JycE8lyzm+FFF7oBEMH
 aBFvq5dAVUzgND3Q79tyflB//P18B1Wx83Xf2UPg=
Received: from mailusrhubprd04.lss.emc.com (mailusrhubprd04.lss.emc.com
 [10.253.24.22]) by maildlpprd55.lss.emc.com (RSA Interceptor);
 Thu, 22 Aug 2019 03:10:21 -0400
Received: from MXHUB321.corp.emc.com (MXHUB321.corp.emc.com [10.146.3.99])
 by mailusrhubprd04.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with
 ESMTP id x7M7AMi5004873
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=FAIL);
 Thu, 22 Aug 2019 03:10:22 -0400
Received: from MX302CL04.corp.emc.com ([fe80::18ad:6300:21eb:2b39]) by
 MXHUB321.corp.emc.com ([10.146.3.99]) with mapi id 14.03.0439.000; Thu, 22
 Aug 2019 03:10:22 -0400
From: "Engel, Amit" <Amit.Engel@Dell.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: RE: [PATCH] nvme/target/admin-cmd.c: Fix a bug in
 'nvmet_execute_get_log_page_error'
Thread-Topic: [PATCH] nvme/target/admin-cmd.c: Fix a bug in
 'nvmet_execute_get_log_page_error'
Thread-Index: AQHVV+rhGH+z1ZJ98kqkpi+ZAD2lWKcGiGKAgAA23nA=
Date: Thu, 22 Aug 2019 07:10:21 +0000
Message-ID: <8739B0CD2FC2DC40AF691A1CCBB9896034606D14@MX302CL04.corp.emc.com>
References: <20190821063711.1252-1-amit.engel@dell.com>
 <20190821234559.GB27887@infradead.org>
In-Reply-To: <20190821234559.GB27887@infradead.org>
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
X-Sentrion-Hostname: mailusrhubprd04.lss.emc.com
X-RSA-Classifications: public
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-22_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=870 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908220077
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=953 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908220078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_001318_145645_08066000 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.137.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

With the current nvmet_execute_get_log_page_error implementation, 
I could not run successfully lid NVME_LOG_ERROR command without this check.

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
