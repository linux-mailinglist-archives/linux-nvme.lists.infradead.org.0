Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3078E1351F7
	for <lists+linux-nvme@lfdr.de>; Thu,  9 Jan 2020 04:33:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QZVso1UP8eZ9elIFDD91bAoReqEOlmFCiVVzZZ3BQlY=; b=rJ8IbK5Lzx3exV
	xZwZ6d6bfulNMWG7iIgQTS1ipZEok3ofeqwu7jb7SiJ/6xTy0TxaJ7uOLEVVcQBck31hXKwMFbqzY
	NL0WbSlvE7ee6FxARnBkDL94mhEDRMIoDOrzSyW/81gCbHHZg0joHjjkoaCngBkK4VTh3cx61Yav6
	Z1vfYbyMsOLKanzTgx0iz1Lj3uX00eLz7+oTW0y/HbW900ukpsuqR2z8B+AJYRLwn3dJ+bpaR7mO+
	tI1g8CWpEdkndP1uNgvQxbzgJ7PmfqNSVx1mzK0M6NHVMenD4kbhAf150IhFYElAaxo3OqxbFx7RA
	SmhVrJBs4vDWw6L883pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipOZW-0003On-5w; Thu, 09 Jan 2020 03:33:22 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipOZO-0003Me-0i
 for linux-nvme@lists.infradead.org; Thu, 09 Jan 2020 03:33:15 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0093X6ZQ172912;
 Thu, 9 Jan 2020 03:33:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=VZ2TqqhPaSVHPFCAp9VkRzjFCSnuYTScC7/s8agUkio=;
 b=fjyE/L+jNX+n98vIuWlmkegIicSZka25fXXqO1N0OaEemyKeMKzZT0UyBvlSMvjESw/S
 C96XCfmhYBPaDucAw0Vz+pF9OWrZZmP82UpDN98Hp7Aq9oHVQAqjx+SaPP63YY19msNh
 ZtPXQkzjSPoc1QACp/6BaT+Pl8MKlhAzmSKHdyFzpLTHXu5Rz55O7vTfP9KnTBuTnj9n
 fxTrXAmYHMexVm7uOIj4NY8Zv5bJ9lFpGAHTy9nI2urV8mq3EItqeqR2BYBSeG62EgmY
 QQRCQKgJH13O91NdBKcy/lDtQLpv7MqH0qeGumW4Sx8s5HBsjjlPXqAg0fFZIJk1Gwiq vg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2xakbr00d4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 Jan 2020 03:33:09 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0093X9LJ106882;
 Thu, 9 Jan 2020 03:33:09 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2xdmrx8p5g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 Jan 2020 03:33:08 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0093X3XP026880;
 Thu, 9 Jan 2020 03:33:04 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 08 Jan 2020 19:33:02 -0800
To: "hch\@lst.de" <hch@lst.de>
Subject: Re: [resend v1 4/5] drivers/nvme/host/core.c: Convert to use
 disk_set_capacity
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200102075315.22652-1-sblbir@amazon.com>
 <20200102075315.22652-5-sblbir@amazon.com>
 <BYAPR04MB57490FFCC025A88F4D97D40A86220@BYAPR04MB5749.namprd04.prod.outlook.com>
 <1b88bedc6d5435fa7154f3356fa3f1a3e6888ded.camel@amazon.com>
 <20200108150447.GC10975@lst.de>
Date: Wed, 08 Jan 2020 22:33:00 -0500
In-Reply-To: <20200108150447.GC10975@lst.de> (hch@lst.de's message of "Wed, 8
 Jan 2020 16:04:47 +0100")
Message-ID: <yq1k161xq1f.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9494
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=854
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001090033
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9494
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=915 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001090033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_193314_193547_0EF36540 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 "Chaitanya.Kulkarni@wdc.com" <Chaitanya.Kulkarni@wdc.com>,
 "mst@redhat.com" <mst@redhat.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "Sangaraju,
 Someswarudu" <ssomesh@amazon.com>, "Singh, Balbir" <sblbir@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Christoph,

>> The expected behaviour is not clear, but the functionality is not
>> broken, user space should be able to deal with a resize event where
>> the previous capacity == new capacity IMHO.
>
> I think it makes sense to not bother with a notification unless there
> is an actual change.

I agree.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
