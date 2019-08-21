Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B4A982A1
	for <lists+linux-nvme@lfdr.de>; Wed, 21 Aug 2019 20:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nAJnkPNpzfHavbceuT0WOCE2uhoKuAanibiwlVtN1hc=; b=eCW49eYmYvqVnd
	O2KF4MMSOpzj2qrHos5by4pGKAB0kh9AuEn9K52ZbAygD/8xvzwUBbtFIguCXBE4cwV1gMBVe1d7p
	/6f31caXFlbPzLTyIKIUOv5M/4iHqTxphqDpRsi14S7sIpzHzF5PnUdZFxQ04f5vbbcHbXK6qjtBI
	uoZ3jShjfoyq3Rq2VwxAkwbWLnEP6mhtRoIYTFDCZYVuNcSbo/KnJVzCfZduc4aYLJDXO3QG0Ep7x
	S6jgZEEW1UIP7hOKSpo1u/PnOSlyRNDUSr9ShvZ8klxPgQg3qyEyjCrq+tecjh8mbxStUdYgssLTQ
	EBPBVXkhPIQs/z9cXu8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VGW-0008Qv-DA; Wed, 21 Aug 2019 18:23:24 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VGR-0008QB-2t
 for linux-nvme@lists.infradead.org; Wed, 21 Aug 2019 18:23:20 +0000
Received: from pps.filterd (m0170398.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7LIJecq020032; Wed, 21 Aug 2019 14:23:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=2ypqhV4EzoiIgRvbVmfTVzjAjnDWprUH+G4N8925wXA=;
 b=QYKAkr/5GjpFP2MjEULqtGM6w2l/xME86xocMzcZAGUOWqwZgt/8/ZVoQDkNZyp49C5Y
 i43vEP5VTGGSf1pl1ArQ9ar56AJRKG8/zkOcijqyFUh8E2133862nrOXW/ZYZ8WbTwYs
 QecYKChQnjqX6hO4QqZYQ4ZtlfbV6x/lope8Y8IkrMKg+0C+lYi1k7wo4B0x2sTZrOme
 7uoNcaadnfiZlzks4JOLPXIaRbtH0Qp1IW55XXx8CzH4fcdbpiaZjpaiNRCMVjS8u9/p
 GjUynCZXLIoMbKhLNvTmT8jroeyWpIt6wI23/SrFvLsgERZTNYQ1i+AoVJVCCuHn2wyX NA== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 2ugn6kp06w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 21 Aug 2019 14:23:10 -0400
Received: from pps.filterd (m0089483.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7LII0pd011232; Wed, 21 Aug 2019 14:23:10 -0400
Received: from mailuogwhop.emc.com (mailuogwhop.emc.com [168.159.213.141])
 by mx0b-00154901.pphosted.com with ESMTP id 2uh9hu1esg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 21 Aug 2019 14:23:10 -0400
Received: from maildlpprd03.lss.emc.com (maildlpprd03.lss.emc.com
 [10.253.24.35])
 by mailuogwprd03.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with
 ESMTP id x7LIKURQ010611
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 21 Aug 2019 14:23:08 -0400
X-DKIM: OpenDKIM Filter v2.4.3 mailuogwprd03.lss.emc.com x7LIKURQ010611
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=emc.com; s=jan2013;
 t=1566411788; bh=h8/td3VeNcn06I3T2hIrfdgMIEw=;
 h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
 Content-Type:Content-Transfer-Encoding:MIME-Version;
 b=j7vI3GrhnQvv/DnGdLYzRYx1rsoMqtXt4/gaqBPhBQcAxVhj1CYrTz8NRZmCqUPNO
 iXGyvSApZltAy07n3qKCez2Zj+I8lzt1KBby0DLnMpkHjJJn0iI0pCm5vmtmtg1ud2
 035dWhQVSmQCr5eZDTx8Sl6YaqXoILEHn1gzhbJ8=
Received: from mailusrhubprd01.lss.emc.com (mailusrhubprd01.lss.emc.com
 [10.253.24.19]) by maildlpprd03.lss.emc.com (RSA Interceptor);
 Wed, 21 Aug 2019 14:10:18 -0400
Received: from MXHUB303.corp.emc.com (MXHUB303.corp.emc.com [10.146.3.29])
 by mailusrhubprd01.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with
 ESMTP id x7LIAIIt004781
 (version=TLSv1.2 cipher=AES128-SHA256 bits=128 verify=FAIL);
 Wed, 21 Aug 2019 14:10:19 -0400
Received: from MX302CL04.corp.emc.com ([fe80::18ad:6300:21eb:2b39]) by
 MXHUB303.corp.emc.com ([10.146.3.29]) with mapi id 14.03.0439.000; Wed, 21
 Aug 2019 14:10:18 -0400
From: "Engel, Amit" <Amit.Engel@Dell.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: RE: [PATCH] nvme/target/admin-cmd.c: Fix a bug in
 'nvmet_execute_get_log_page_error'
Thread-Topic: [PATCH] nvme/target/admin-cmd.c: Fix a bug in
 'nvmet_execute_get_log_page_error'
Thread-Index: AQHVV+rhGH+z1ZJ98kqkpi+ZAD2lWKcGFXOA///RjqA=
Date: Wed, 21 Aug 2019 18:10:18 +0000
Message-ID: <8739B0CD2FC2DC40AF691A1CCBB9896034606C66@MX302CL04.corp.emc.com>
References: <20190821063711.1252-1-amit.engel@dell.com>
 <e1a9a673-5064-a86b-a731-5859cfcf04b3@grimberg.me>
In-Reply-To: <e1a9a673-5064-a86b-a731-5859cfcf04b3@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Amit.Engel@emc.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-08-21T18:10:15.5805804Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual;
 aiplabel=External Public
x-originating-ip: [10.76.40.154]
MIME-Version: 1.0
X-Sentrion-Hostname: mailusrhubprd01.lss.emc.com
X-RSA-Classifications: public
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-21_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908210181
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908210181
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_112319_303278_4EB27602 
X-CRM114-Status: GOOD (  11.76  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

No problem.
I added "Signed-off-by: Amit Engel <amit.engel@dell.com>"
Also changed the commit message and patch title per your recommendation.

Thanks
Amit

-----Original Message-----
From: Sagi Grimberg <sagi@grimberg.me> 
Sent: Wednesday, August 21, 2019 7:55 PM
To: Engel, Amit; linux-nvme@lists.infradead.org
Subject: Re: [PATCH] nvme/target/admin-cmd.c: Fix a bug in 'nvmet_execute_get_log_page_error'


[EXTERNAL EMAIL] 

> From: Amit <amit.engel@emc.com>

Can you please make sure that your last name is added (author and signed-off-by)

Also, the patch title needs work.

should be something like:
nvmet: Fix possible buffer overflow in 'nvmet_execute_get_log_page_error'

> ensure that nvmet_copy_to_sgl does not exceed data_len

ensure that nvmet_copy_to_sgl does not exceed the request data_len
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
