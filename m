Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7602C2686A
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 18:36:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUN15Ctx6wrECTotHwDG9qOZM2dOoGz48CcYNfefuKs=; b=fL/C9EJkA2vlyI
	thLMZmtLalznIc9Dk3GyQyxIh+YKcX6d6cZSVcIy+VJ4Uh49kV9dxjZGXxxGIRVNaGVc3HVb/eTbg
	PiiEfMUpnIhQD5pb8JABCU4GTFhQv/zSPuE6SmI7tKpUisV9Xjz86nnuOPu11B0XL+DdCXkbnb84U
	rmAVL4nAt4D0c50CgRHtam/+cczZPJP6q+j1GwILlrwTxBWieBGtVH9IeLUh6WPJUO9LiQom/5Z3s
	ULTScRL8xwt8i3jjR8oMaJjXf1xxtY6CGDHSSNFitD/Jfl69fbkIOO7fh9MnOo/shAdPBHWyjZCxk
	99MbwVQcWeHUhAwSs11g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTUDl-0000T2-HP; Wed, 22 May 2019 16:36:05 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTUDf-0000Om-MW
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 16:36:01 +0000
Received: from pps.filterd (m0170395.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4MGTlJv001709
 for <linux-nvme@lists.infradead.org>; Wed, 22 May 2019 12:35:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=VzjHSNrP65JBqLTvdVf8QKFCakfLfloY2XXrDrvbX8c=;
 b=IjwzjAj3W05sFWUOE59FggNaNGRZcAPVp9xGiqWGroFkzToF4KkhxBkX3kuZuRSDz8KH
 RhaajRqp77sAMxPOQ1fng++94BhYiqK07ee1pEWhfioMHq19A0DtX/OdV/bCWbKYJzjv
 H77rulqxD9LojpR0H0NnjLl/2H6m7WzvEJ11ZTFkCOB3I1iwnhxRO14k7C3oUJgogStF
 h1tk/CB/3fjZI1mcT8a3vM4Tk2UrLoraEIPYqc+Bvetl0Ay4n5662V82cFQwvG5LJQvW
 i6GkEgjXiBIrGtWFhiMIpFe2VinHNErc79OsZ5JHMhucNxjBNK+qUdg3C/HbLnlQ6UVn hg== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 2smy8vt9n0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Wed, 22 May 2019 12:35:56 -0400
Received: from pps.filterd (m0133268.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4MGX8iZ123141
 for <linux-nvme@lists.infradead.org>; Wed, 22 May 2019 12:35:55 -0400
Received: from ausc60pc101.us.dell.com (ausc60pc101.us.dell.com
 [143.166.85.206])
 by mx0a-00154901.pphosted.com with ESMTP id 2sjc9r8tmc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Wed, 22 May 2019 12:35:55 -0400
X-LoopCount0: from 10.166.132.134
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="1409017310"
From: <Mario.Limonciello@dell.com>
To: <kbusch@kernel.org>, <hch@lst.de>
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Thread-Topic: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Thread-Index: AQHVCz0dhbbBUhQLLk2d9tGe3EmpNaZt0PkAgABTNACAAEM1AP//rcswgABmAQCAAA1AgIAAA+0AgAAEjICAAMR5gP//txW9gABYjQCAABCAgIAHnGmAgACYQICAAAKmgP//tRCw
Date: Wed, 22 May 2019 16:35:50 +0000
Message-ID: <1558542950751.23268@Dell.com>
References: <CAJZ5v0gBQVjy70CbA6CzkkjsGQYGeO6fDjJimvadM5_oq=3qeA@mail.gmail.com>
 <20190516203950.GB23853@localhost.localdomain>
 <CAJZ5v0hZSiQuuq2+P+uLd3uE=ruuTW+5DmAdjqcr39=7poUe-g@mail.gmail.com>
 <CAJZ5v0j0V10BYrME=KU1AJXGDMRUFFHiZEHQnsXhNJGPZKBSUw@mail.gmail.com>
 <20190517090521.GA15509@lst.de>
 <CAJZ5v0iL+ERE4Yy5yO8U2no194sRkvqNZHh5HsZXKvvHbxtk+g@mail.gmail.com>
 <20190517093516.GA17006@lst.de>
 <CAJZ5v0gLqL7GUjwz5F8=9Fc-W2n3FRzbbB2L8udaXgN4Vsd8-Q@mail.gmail.com>
 <D4CDCA72-A3B8-4717-9ED2-A14254C78963@canonical.com>
 <20190522155253.GA29827@lst.de>, <20190522160221.GB5393@localhost.localdomain>
In-Reply-To: <20190522160221.GB5393@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.177.90.69]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-22_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=666 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905220116
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=745 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905220116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_093559_986252_90BD59C1 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.137.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: keith.busch@intel.com, kai.heng.feng@canonical.com, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, rafael@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>I've a branch here that I'll send to the mailing list after some testing
>this afternoon

 > https://git.kernel.org/pub/scm/linux/kernel/git/kbusch/linux.git/log/?h=nvme-power

Make sure you do your testing with Rafael's patch that keeps the device in D0 across the
various suspend steps, I didn't see it obviously on your branch in the last 2 weeks of
commits.
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
