Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD98A4DEDC
	for <lists+linux-nvme@lfdr.de>; Fri, 21 Jun 2019 03:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01z7C/n8KZUpxKddr32ii+rumsSt056j04CB8Ri28Bg=; b=fNigNYV0NQjAeE
	E0Qx9UwJa+um5/JtGg9EEopXpXCE9v/0mlCe4SjyqszL7mlTxrJD5t/ivxfx82w/CLMFVkMfMlNn4
	FpOW5mPCZaQFQglhMkX57YrS48SPXv9KpBUZYLaHI6LgXwOfMqAeJEwAiJKFbAHnbYP+Tlpi7NgbK
	MWxbSQMX0JC8F+3UFCC+ineLurgglB730WUvcUlAa3v2RNpYzqgGS0Mb6eVAT57wciTeJarxZAYZT
	WPlKHscLgEQeQ6JNUH6Dtg9Ej2uJZphZPjCRvzuwz6DNwTJ9Csh0drrGFL5vGNj8AF2UKhe5SO8dP
	cqSDkTxGR5X//Gl7gKQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he8nG-0008Hk-BI; Fri, 21 Jun 2019 01:56:46 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he8nA-0008HJ-Jf
 for linux-nvme@lists.infradead.org; Fri, 21 Jun 2019 01:56:41 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5L1tCcX061395;
 Fri, 21 Jun 2019 01:56:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2018-07-02;
 bh=XAv7xuV+lhXFB2iG0b++AsTRzosPtjeNpSAWv20x4qE=;
 b=ND96k1Jp75A8KEB2KQSGWOn1a46W3OXnb7dDEZIFEmuncPA+jhIqPv172ocTCDYkZRzW
 YgHZc59NMe2q9llRKZNJq+Axs3y8pFhEIvdb8/K92kdRDZCPsmBRloWa4hF8nY7QG0fH
 7JhY2TqEsTKrFJEVWTVZs3n7vZRkXj7KyTCeTXuCWusowAtlz6P+xQU4uP3CCqKmZd72
 zd9NKJQGggP2elPQYbXgNeZatTnU4iRLEbBtAdQ/lKCYHeQDaFqq1XexKQIyaz96QMKW
 2PyIHD4xt2gECVzigmoDmc+Dnx3rph8z21ih6VAJiv01WHqLPDJJsTDPIPYLEsSQPV3W 0w== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2t7809kyxv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 21 Jun 2019 01:56:19 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5L1tDRP034382;
 Fri, 21 Jun 2019 01:56:18 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2t77yny35n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 21 Jun 2019 01:56:18 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5L1uGam014635;
 Fri, 21 Jun 2019 01:56:16 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 20 Jun 2019 18:56:15 -0700
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH v3 2/3] nvmet: Export NVMe namespace attributes
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20190617161222.253849-1-bvanassche@acm.org>
 <20190617161222.253849-3-bvanassche@acm.org>
 <yq1a7eeusa5.fsf@oracle.com>
 <68786de5-cdd8-c6d8-98a7-8a4310dac789@acm.org>
Date: Thu, 20 Jun 2019 21:56:11 -0400
In-Reply-To: <68786de5-cdd8-c6d8-98a7-8a4310dac789@acm.org> (Bart Van Assche's
 message of "Wed, 19 Jun 2019 08:44:41 -0700")
Message-ID: <yq1blyrpupw.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9294
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906210014
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9294
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906210015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_185640_784181_C5532BCA 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Bart,

> Are you perhaps referring to the parameter that can be specified as
> command-line option -b to mkfs? I'm not sure that we should report
> that size as the physical block size since that parameter can be set
> to a value that is much larger than the physical block size of the
> storage medium (in the target system).

An admin can create all sorts of weird configurations by twiddling
options. But trying to match the physical block size is one of the
heuristics for mkfs.

Also, I haven't actually looked at the code, but what happens with the
buffered I/O backend?

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
