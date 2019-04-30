Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67537F880
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 14:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DjX7fNqr3ja56NQItd0ecH6/nrAYJdwZOnody3x6s8o=; b=XD1Y/zltipb9l5
	ch9ClJysXNnt1vlj/NOPj0vZ4a4ZfDVCKl4P3tRPUy0QpRmB07WGztW52WMrK4CsFmJomig+fjqw7
	XonInDgeBIN+g2/BlGa/+TegeHyJFp29IB5uMfOHQ8WOWieJNrs0iOkXLiyPVeYOnSMdrYht1bB6f
	lEkJ+LQamX55IkRsLlkmG+KZypMhnW0mnxedCw/beDpuOscawjteFjz1vJVXbsRRBhYN9kTf2imNH
	Fp58ghdb/pQk6vztj606Zo1SXapjwEY051pXfzlx0LsquACCEZSx4r+Ffup8hKfeG8uUTwYUzH+Q0
	cHU23Ra+5DZ/yXy9fLVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLRch-0007LY-Nb; Tue, 30 Apr 2019 12:12:35 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLRcb-0007Kt-JR
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 12:12:31 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x3UC4RjX136070;
 Tue, 30 Apr 2019 12:12:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=sDfolhPoDtLY6nBfVuOfoHQP4qFaH5aAZKN77BieGGk=;
 b=b4w9PYN0/nvmxM8Bh0m5KG8BUa7Y1tT5y7CfUhUw2p4snONZvCCH3UjvyQizm6ttnvjG
 NUQDiAh7dGzX9n4uAx1jcqOR4unN6cs0wGHPVMlQLSllTuukzRS6YlbJRboLsKGoAfyw
 sfNrbrcgEnWXx9S72KUkms6474UZM9/2vsPpigrAzADTUPfHZPuvpCzTc29/Lv0ixH7/
 d/1JbpaeKT6sMX+8GYY8jywqMlZ5Dc66NZOnla1S76s7AkPQr5USnXPLGRYcjOBXAUuS
 FJjBPQT2JGVHb/20oafkRnOZ0M8zn/hxZZmbIrI5rMHzMQ60hB8wRyqsQz0dAVorMpOj jQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 2s4ckdcacg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 30 Apr 2019 12:12:14 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x3UCAmkP161390;
 Tue, 30 Apr 2019 12:12:13 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2s4ew16sut-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 30 Apr 2019 12:12:13 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x3UCCC52029414;
 Tue, 30 Apr 2019 12:12:12 GMT
Received: from [192.168.0.100] (/73.243.10.6)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 30 Apr 2019 05:12:12 -0700
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: Read-only Mapping of Program Text using Large THP Pages
From: William Kucharski <william.kucharski@oracle.com>
In-Reply-To: <CAPhsuW6uDeXrRU9pd-kPOzjJn3DVdx0O5Lny_hpyQ=Fpbhg4gw@mail.gmail.com>
Date: Tue, 30 Apr 2019 06:12:04 -0600
Message-Id: <C39B5A6C-2898-44DC-B11B-017908261C09@oracle.com>
References: <379F21DD-006F-4E33-9BD5-F81F9BA75C10@oracle.com>
 <20190220134454.GF12668@bombadil.infradead.org>
 <07B3B085-C844-4A13-96B1-3DB0F1AF26F5@oracle.com>
 <20190220144345.GG12668@bombadil.infradead.org>
 <20190220163921.GA4451@localhost.localdomain>
 <20190220171905.GJ12668@bombadil.infradead.org>
 <B53C9F2D-966C-4DFD-8151-0A7255ACA9AD@oracle.com>
 <CAPhsuW6uDeXrRU9pd-kPOzjJn3DVdx0O5Lny_hpyQ=Fpbhg4gw@mail.gmail.com>
To: Song Liu <liu.song.a23@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9242
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=877
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1904300080
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9242
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=902 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1904300080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_051229_723685_BE00F811 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Linux-MM <linux-mm@kvack.org>,
 Matthew Wilcox <willy@infradead.org>,
 Linux-Fsdevel <linux-fsdevel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



> On Apr 28, 2019, at 2:08 PM, Song Liu <liu.song.a23@gmail.com> wrote:
> 
> We will bring this proposal up in THP discussions. Would you like to share more
> thoughts on pros and cons of the two solutions? Or in other words, do you have
> strong reasons to dislike either of them?

I think it's a performance issue that needs to be hashed out.

The obvious thing to do is read the whole large page and then map
it, but depending on the architecture or I/O speed, mapping one
PAGESIZE page to satisfy the single fault while the large page is
being read in could potentially be faster. However, as with all
swags without actual data who can say. You can also bring up the
question of whether with SSDs and NVME storage if it makes sense
to worry anymore about how long it would take to read a 2M or even
1G page in from storage. I like the idea of simply reading the
entire large page purely for neatness reasons - recovering from an
error during redhead of a large page seems like it could become
rather complex.

One other issue is how this will interact with filesystems and how
and how to tell filesystems I want a large page's worth of data.
Matthew mentioned that compound_order() can be used to detect the
page size, so that's one answer, but obviously no such code exists
as of yet and it would need to be propagated across all file systems.

I really hope the discussions at LSFMM are productive.

-- Bill
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
