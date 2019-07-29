Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC0078FE2
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Jul 2019 17:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIGmoOXg1uBS//h4hfIrbV2BM2CFmT0c2UG6NwWoAAY=; b=aChvHWTRxjcnv7
	tJWnpJH5QwxaL7Bb+r5xDQ3TtoGA65decDptprZi6PZKvmLxbi+i4EtcYhEBuWRzRlAxwXiS/mKMD
	508cH9W3eN2cY5W7Lc6mqqHcfzJMQOaM24X7YJH0UDYkZiyo1B/HAIuxA3nOXZoYoZKWo7A/ORRnn
	cnkKidYK1wyJQke0SQ0pIwIJV8dx/SU6JT6WjnWMTk1PG2bx+RPtXf52YEYweKhbwpbselW1tXcn/
	PgGJBKe/f2fQa89KcYTm21mLUl4CWWWltX/iaAiiY4jb/y9UerfSK+bqpWkQLu8xKb2LtlzBFwPKv
	Rm02mrUHMcyVZ5jOvFOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs7yE-0007fu-VL; Mon, 29 Jul 2019 15:53:54 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs7xu-0007ep-6v
 for linux-nvme@lists.infradead.org; Mon, 29 Jul 2019 15:53:36 +0000
Received: from pps.filterd (m0170395.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6TFiRWu024995
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 11:53:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=2q97VoKTLol6hqzznRi5AK9oOy1nejb2onfq1aZxkCc=;
 b=mwSun/DxgNwZi1a1aa2jrA4KJAtfNdNxqcnS6PL+huLVagv66ytnR87/eu3XjVwJ0WWT
 STurONOZTanwYA+TAi1hMR7rnBTMsrnL1TBV+znWu1IDWf6IwBgW1cAOZejpi4bUGZtQ
 tA/mGXoE1hYG2TRuFNOHZ02n24mJ43xp/0/+gtOPTLs8sQjCNSQFvSKrNKqF3ZWAx3sb
 D9iizCZvLVtANKm+zn+XfyhW9U3OPMF8UMSrlCGGCwa9JMfOyqyQl9UvCUx2SBjC66Re
 LbN2r4X2p3pQuXT8NSuDe+8J1s6NHkqBnnVKn6WDQcOs4dAhZToqAZTnMSU9kvOvWMWW 5g== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 2u0k9q0d1d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 11:53:31 -0400
Received: from pps.filterd (m0133268.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6TFlX9D156181
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 11:53:30 -0400
Received: from ausc60ps301.us.dell.com (ausc60ps301.us.dell.com
 [143.166.148.206])
 by mx0a-00154901.pphosted.com with ESMTP id 2u141sw52y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 11:53:30 -0400
X-LoopCount0: from 10.166.132.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="1338051051"
From: <Mario.Limonciello@dell.com>
To: <rafael@kernel.org>, <kai.heng.feng@canonical.com>
Subject: RE: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Thread-Topic: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Thread-Index: AQHVQs6UiIesxZzK0UKkUWrQRuKoE6bbv0cAgABS64CAAAEhgIAAAsaAgAEtwoCAAX9fgIADAZew
Date: Mon, 29 Jul 2019 15:51:50 +0000
Message-ID: <868a042a9422463fa1166653982bb985@AUSX13MPC105.AMER.DELL.COM>
References: <2332799.izEFUvJP67@kreacher> <2428826.VBuqOhikiK@kreacher>
 <20190725195258.GA7307@localhost.localdomain> <15043168.halW6uqc8m@kreacher>
 <D33632F4-E119-4833-816C-79084DA03DE4@canonical.com>
 <CAJZ5v0imsVS-eDB+Lmd5qzAfmb0UpJ5AwV_Vf+v8D21KAtqTOg@mail.gmail.com>
In-Reply-To: <CAJZ5v0imsVS-eDB+Lmd5qzAfmb0UpJ5AwV_Vf+v8D21KAtqTOg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-07-29T15:51:48.5689646Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual;
 aiplabel=External Public
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-29_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907290178
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1907290178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_085334_427620_A300F031 
X-CRM114-Status: GOOD (  23.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.137.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sagi@grimberg.me, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Rafael J. Wysocki <rafael@kernel.org>
> Sent: Saturday, July 27, 2019 7:55 AM
> To: Kai-Heng Feng
> Cc: Rafael J. Wysocki; Keith Busch; Busch, Keith; Christoph Hellwig; Sagi Grimberg;
> linux-nvme@lists.infradead.org; Limonciello, Mario; Linux PM; LKML
> Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
> suspend" has problems
> 
> 
> [EXTERNAL EMAIL]
> 
> On Fri, Jul 26, 2019 at 4:03 PM Kai-Heng Feng
> <kai.heng.feng@canonical.com> wrote:
> >
> > at 04:02, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> >
> > > On Thursday, July 25, 2019 9:52:59 PM CEST Keith Busch wrote:
> > >> On Thu, Jul 25, 2019 at 09:48:57PM +0200, Rafael J. Wysocki wrote:
> > >>> NVME Identify Controller:
> > >>> vid     : 0x1c5c
> > >>> ssvid   : 0x1c5c
> > >>> sn      : MS92N171312902J0N
> > >>> mn      : PC401 NVMe SK hynix 256GB
> > >>> fr      : 80007E00
> > >>> rab     : 2
> > >>> ieee    : ace42e
> > >>> cmic    : 0
> > >>> mdts    : 5
> > >>> cntlid  : 1
> > >>> ver     : 10200
> > >>> rtd3r   : 7a120
> > >>> rtd3e   : 1e8480
> > >>> oaes    : 0x200
> > >>> ctratt  : 0
> > >>> oacs    : 0x17
> > >>> acl     : 7
> > >>> aerl    : 3
> > >>> frmw    : 0x14
> > >>> lpa     : 0x2
> > >>> elpe    : 255
> > >>> npss    : 4
> > >>> avscc   : 0x1
> > >>> apsta   : 0x1
> > >>> wctemp  : 352
> > >>> cctemp  : 354
> > >>> mtfa    : 0
> > >>> hmpre   : 0
> > >>> hmmin   : 0
> > >>> tnvmcap : 0
> > >>> unvmcap : 0
> > >>> rpmbs   : 0
> > >>> edstt   : 10
> > >>> dsto    : 0
> > >>> fwug    : 0
> > >>> kas     : 0
> > >>> hctma   : 0
> > >>> mntmt   : 0
> > >>> mxtmt   : 0
> > >>> sanicap : 0
> > >>> hmminds : 0
> > >>> hmmaxd  : 0
> > >>> nsetidmax : 0
> > >>> anatt   : 0
> > >>> anacap  : 0
> > >>> anagrpmax : 0
> > >>> nanagrpid : 0
> > >>> sqes    : 0x66
> > >>> cqes    : 0x44
> > >>> maxcmd  : 0
> > >>> nn      : 1
> > >>> oncs    : 0x1f
> > >>> fuses   : 0x1
> > >>> fna     : 0
> > >>> vwc     : 0x1
> > >>> awun    : 7
> > >>> awupf   : 7
> > >>> nvscc   : 1
> > >>> acwu    : 7
> > >>> sgls    : 0
> > >>> mnan    : 0
> > >>> subnqn  :
> > >>> ioccsz  : 0
> > >>> iorcsz  : 0
> > >>> icdoff  : 0
> > >>> ctrattr : 0
> > >>> msdbd   : 0
> > >>> ps    0 : mp:6.00W operational enlat:5 exlat:5 rrt:0 rrl:0
> > >>>           rwt:0 rwl:0 idle_power:- active_power:-
> > >>> ps    1 : mp:3.80W operational enlat:30 exlat:30 rrt:1 rrl:1
> > >>>           rwt:1 rwl:1 idle_power:- active_power:-
> > >>> ps    2 : mp:2.40W operational enlat:100 exlat:100 rrt:2 rrl:2
> > >>>           rwt:2 rwl:2 idle_power:- active_power:-
> > >>> ps    3 : mp:0.0700W non-operational enlat:1000 exlat:1000 rrt:3 rrl:3
> > >>>           rwt:3 rwl:3 idle_power:- active_power:-
> > >>> ps    4 : mp:0.0070W non-operational enlat:1000 exlat:5000 rrt:3 rrl:3
> > >>>           rwt:3 rwl:3 idle_power:- active_power:-
> > >>
> > >> Hm, nothing stands out as something we can use to determine if we should
> > >> skip the nvme specific settings or allow D3. I've no other ideas at the
> > >> moment for what we may check.
> > >
> > > Well, do ASPM settings matter here?
> >
> > Seems like it's a regression in the firmware.
> >
> > The issue happens in version 80007E00 but not version 80006E00.
> 
> So you mean the NVMe firmware, to be entirely precise.

Yes.

> 
> > I am not sure how to downgrade it under Linux though.
> 
> Me neither.

I'll ask the storage team to ask Hynix to make both these FW available on LVFS.
Fwupd can upgrade and downgrade firmware when the binaries are made available.

They could potentially be pulled directly out of the Windows executables too, but I don't
know how to identify them myself.

> 
> > The firmware changelog [1] is very interesting:
> > - Improves the performance of the solid-state drive (SSD) by distributing
> > power into the SSD efficiently according to the power state of the system.
> >
> > [1]
> >
> https://www.dell.com/support/home/us/en/04/drivers/driversdetails?driverid=m
> cxm8
> 
> Huh.
> 
> It looks like something else prevents the PCH on my 9380 from reaching
> the right state for S0ix, though.  I still need to find out what it
> is.
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
