Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF7C188A42
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Mar 2020 17:29:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	MIME-Version:Date:To:From:In-Reply-To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+r0rJlTxnL1U9H672B3Mlo6AkTbhhbbq+UYkRPQM9Jk=; b=XY+1BN4esppxsZ
	C5HbxGIYmU9JipJin31zYFrrYGPPUq/8HcWUhj9OHTpcWBwxAhznf822LFs4inKPlmfK4ZSVO0xW2
	HJ1FDTIJRKdwtaGkPJS6EvyZ3hL0ZzNx+VLKxQHKLRlz3Rzn7gvgroSAwk2a8bsgvzsqKpag7juJI
	PTCKZMNjvHaTPstf3Pw8fnP4P6vAiD+XrdSkMeIRhO6C5OztgRU3JQvNkjuIyGf27wrYfcSRJbb3P
	j6BzuyJ3yeMjQYXsoOD2gvIgDFvinyNwFtnyahpwTkk9sEBXlrQeR9IKoX3WXCL/0JKOoraL2aCeg
	ysqwzWye85oNt/7Y7ffQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEF68-0008Mu-Sy; Tue, 17 Mar 2020 16:29:44 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEF62-0008MA-V7
 for linux-nvme@lists.infradead.org; Tue, 17 Mar 2020 16:29:40 +0000
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02HGKCKM125351
 for <linux-nvme@lists.infradead.org>; Tue, 17 Mar 2020 12:29:38 -0400
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com
 [192.155.248.66])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2yrubpa2w6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Tue, 17 Mar 2020 12:29:38 -0400
Received: from localhost
 by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
 for <linux-nvme@lists.infradead.org> from <BMT@zurich.ibm.com>;
 Tue, 17 Mar 2020 16:29:35 -0000
Received: from us1a3-smtp03.a3.dal06.isc4sb.com (10.106.154.98)
 by smtp.notes.na.collabserv.com (10.106.227.127) with
 smtp.notes.na.collabserv.com ESMTP; Tue, 17 Mar 2020 16:29:28 -0000
Received: from us1a3-mail162.a3.dal06.isc4sb.com ([10.146.71.4])
 by us1a3-smtp03.a3.dal06.isc4sb.com
 with ESMTP id 2020031716292879-851182 ;
 Tue, 17 Mar 2020 16:29:28 +0000 
In-Reply-To: <a8e7b61a-b238-2cc3-d3c8-743ad1f8c8ee@grimberg.me>
From: "Bernard Metzler" <BMT@zurich.ibm.com>
To: "Sagi Grimberg" <sagi@grimberg.me>
Date: Tue, 17 Mar 2020 16:29:28 +0000
MIME-Version: 1.0
Sensitivity: 
Importance: Normal
X-Priority: 3 (Normal)
References: <a8e7b61a-b238-2cc3-d3c8-743ad1f8c8ee@grimberg.me>,
 <20200316162008.GA7001@chelsio.com> <20200317124533.GB12316@lst.de>
X-Mailer: IBM iNotes ($HaikuForm 1054.1) | IBM Domino Build
 SCN1812108_20180501T0841_FP62 November 04, 2019 at 09:47
X-LLNOutbound: False
X-Disclaimed: 32371
X-TNEFEvaluated: 1
x-cbid: 20031716-4409-0000-0000-000002410316
X-IBM-SpamModules-Scores: BY=0; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.40962; ST=0; TS=0; UL=0; ISC=; MB=0.000002
X-IBM-SpamModules-Versions: BY=3.00012765; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000293; SDB=6.01349039; UDB=6.00719492; IPR=6.01131448; 
 MB=3.00031266; MTD=3.00000008; XFM=3.00000015; UTC=2020-03-17 16:29:34
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2020-03-17 09:56:09 - 6.00011129
x-cbparentid: 20031716-4410-0000-0000-000057BC6368
Message-Id: <OFB2589549.AD31F8B8-ON0025852E.005A969A-0025852E.005A96A3@notes.na.collabserv.com>
Subject: RE: broken CRCs at NVMeF target with SIW & NVMe/TCP transports
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-17_06:2020-03-17,
 2020-03-17 signatures=0
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_092939_011548_89EBA8AC 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rdma@vger.kernel.org, Potnuri Bharat Teja <bharat@chelsio.com>,
 Nirranjan
 Kirubaharan <nirranjan@chelsio.com>, linux-nvme@lists.infradead.org,
 Krishnamraju Eraparaju <krishna2@chelsio.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

-----"Sagi Grimberg" <sagi@grimberg.me> wrote: -----

>To: "Christoph Hellwig" <hch@lst.de>, "Krishnamraju Eraparaju"
><krishna2@chelsio.com>
>From: "Sagi Grimberg" <sagi@grimberg.me>
>Date: 03/17/2020 05:04PM
>Cc: "Bernard Metzler" <BMT@zurich.ibm.com>,
>linux-nvme@lists.infradead.org, linux-rdma@vger.kernel.org,
>"Nirranjan Kirubaharan" <nirranjan@chelsio.com>, "Potnuri Bharat
>Teja" <bharat@chelsio.com>
>Subject: [EXTERNAL] Re: broken CRCs at NVMeF target with SIW &
>NVMe/TCP transports
>
>> On Mon, Mar 16, 2020 at 09:50:10PM +0530, Krishnamraju Eraparaju
>wrote:
>>>
>>> I'm seeing broken CRCs at NVMeF target while running the below
>program
>>> at host. Here RDMA transport is SoftiWARP, but I'm also seeing the
>>> same issue with NVMe/TCP aswell.
>>>
>>> It appears to me that the same buffer is being rewritten by the
>>> application/ULP before getting the completion for the previous
>requests.
>>> getting the completion for the previous requests. HW based
>>> HW based trasports(like iw_cxgb4) are not showing this issue
>because
>>> they copy/DMA and then compute the CRC on copied buffer.
>> 
>> For TCP we can set BDI_CAP_STABLE_WRITES.  For RDMA I don't think
>that
>> is a good idea as pretty much all RDMA block drivers rely on the
>> DMA behavior above.  The answer is to bounce buffer the data in
>> SoftiWARP / SoftRoCE.
>
>We already do, see nvme_alloc_ns.
>
>

Krishna was getting the issue when testing TCP/NVMeF with -G
during connect. That enables data digest and STABLE_WRITES
I think. So to me it seems we don't get stable pages, but
pages which are touched after handover to the provider.



_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
