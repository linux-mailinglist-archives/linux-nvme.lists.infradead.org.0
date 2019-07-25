Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F597594B
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 23:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTRQeT/G1uj6/OM3y4CZWpbYQztF19clXfC7Iaxd7pg=; b=bc+4BlnCBe2wHH
	pFv5g/2r9dT4vL0yxmyrI1zZ4VptnD2FhZOJ9f263/fsRdM3Z7knoDiqG1b0EbZwMl8JmI9ISSx4o
	/T+4Q7DZMJ83tN4OjsfGCfUZQ0BRB4yZCf7yneIoEgaZNGU2ANnTtIegz+HDVg5AcHMO1d4qEF7Hm
	oMQ+zI+xGTZPBf0xyXumsyd893vzIDpIr8gWWtfade2YASm9Msj8pnu6rBvuAuHWtayGTSQWWYFMk
	zRbCMbdbJ9dhK+ju0HdH9MGEVtUraOPf6w/rf9Xxlcd4loS5OpurSpAnEZSuuLcao23WAGDUJ6NnE
	9e6vZ128jSbsFNeKRltg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqkvJ-0001eP-Q2; Thu, 25 Jul 2019 21:05:13 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqkv7-00014F-QE
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 21:05:03 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6PL4J9V017818;
 Thu, 25 Jul 2019 21:04:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=Jy5UOx96pYuWyAJENHwUE1OokdDB9KnffKhl98cnBbA=;
 b=U8TQnZ4boofPh9ahRzi+0rO4LmV4umRFoOqhkkW7BOkm4qFDh5GiDs5Sfa6+08WVYNLI
 tTFq97jQNLxCThqxQjLLDBlCd0Vi5zpDOyrb7RxSBDRHcgwiq5B4+D5Q8Ic/fVS0qW23
 5WsHegD+KLpdZocioDkM2iyrOJkJslbXTINV+tx+3aiUwRA5FupphwToeir4PaFzBuTN
 4e50tqTchPh/FKOri+ftQ0FO22pMx+6jxm9ItIyO0OXHyE2onKuDDPwCWHDplNhGz52S
 baV/jfYHvVFoTEG3meaHQfrg4AkDCCXaQVf5Qu7rIzmitupEkBTQ3HDvBBNYm/cvFRr/ Ug== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2tx61c6jq1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Jul 2019 21:04:53 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6PL2cHP026082;
 Thu, 25 Jul 2019 21:04:52 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2tx60yj14n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Jul 2019 21:04:52 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x6PL4pmj005811;
 Thu, 25 Jul 2019 21:04:52 GMT
Received: from dhcp-10-154-135-141.vpn.oracle.com (/10.154.135.141)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 25 Jul 2019 14:04:51 -0700
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: nvme statistics :  iostat vs  sar 
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <20190724151200.GA5379@localhost.localdomain>
Date: Thu, 25 Jul 2019 16:04:49 -0500
Message-Id: <FF1261FA-2653-4049-9999-90FEADB328D5@oracle.com>
References: <D4F9A3CB-489A-4946-ADF2-C7C17A21E076@oracle.com>
 <20190724151200.GA5379@localhost.localdomain>
To: Keith Busch <kbusch@kernel.org>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9329
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=3
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1907250252
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9329
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=3 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1907250252
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_140502_001580_F06E5966 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



> On Jul 24, 2019, at 10:12 AM, Keith Busch <kbusch@kernel.org> wrote:
> 
> On Wed, Jul 24, 2019 at 09:51:36AM -0500, John Donnelly wrote:
>> Hi,
>> 
>> I noticed  nvme I/O  does not appear  in sar disk data (-d ) ,  but it does appear with  sar block (-b)  and iostat.
>> 
>> Is this expected ?
> 
> 'sar -d' should show activity. It does work as expected on my test machine:
> 
> # ls -l /dev/nvme*n*
> brw-rw----. 1 root disk 259, 0 May 23 09:07 /dev/nvme0n1
> brw-rw----. 1 root disk 259, 1 May 23 09:07 /dev/nvme1n1
> brw-rw----. 1 root disk 259, 2 May 23 09:07 /dev/nvme2n1
> brw-rw----. 1 root disk 259, 3 May 23 09:07 /dev/nvme3n1
> 
> # sar -d 2 10
> Linux 5.2.0-rc1+ (localhost.localdomain)        07/24/2019      _x86_64_        (112 CPU)
> 
> 09:03:06 AM       DEV       tps     rkB/s     wkB/s   areq-sz    aqu-sz     await     svctm     %util
> 09:03:08 AM    dev8-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
> 09:03:08 AM  dev253-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
> 09:03:08 AM  dev253-1      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
> 09:03:08 AM  dev259-1      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
> 09:03:08 AM  dev259-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
> 09:03:08 AM  dev259-2      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
> 09:03:08 AM  dev259-3      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
> 
> 09:03:08 AM       DEV       tps     rkB/s     wkB/s   areq-sz    aqu-sz     await     svctm     %util
> 09:03:10 AM    dev8-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
> 09:03:10 AM  dev253-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
> 09:03:10 AM  dev253-1      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
> 09:03:10 AM  dev259-1  26370.50 105482.00      0.00      4.00      0.00      0.02      0.00     12.75
> 09:03:10 AM  dev259-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
> 09:03:10 AM  dev259-2  26384.00 105532.00      0.00      4.00      0.00      0.03      0.00     12.75
> 09:03:10 AM  dev259-3  26389.50 105556.00      0.00      4.00      0.00      0.02      0.00     12.75
> 
> 09:03:10 AM       DEV       tps     rkB/s     wkB/s   areq-sz    aqu-sz     await     svctm     %util
> 09:03:12 AM    dev8-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
> 09:03:12 AM  dev253-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
> 09:03:12 AM  dev253-1      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
> 09:03:12 AM  dev259-1 225306.00 901224.00      0.00      4.00      0.00      0.02      0.00    100.00
> 09:03:12 AM  dev259-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
> 09:03:12 AM  dev259-2 225304.50 901220.00      0.00      4.00      0.00      0.03      0.00    100.00
> 09:03:12 AM  dev259-3 225306.50 901228.00      0.00      4.00      0.00      0.02      0.00    100.00
> 


Ok -   I see sar -d when there is filesystem activity on the devices   ;   There is no activity when raw I/O is done  ;






_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
