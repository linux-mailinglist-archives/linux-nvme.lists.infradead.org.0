Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72472163A94
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Feb 2020 03:56:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hz1uLMOaNDlZ71kmfDDiJAsPHoqxYqE2DP1PEkhcBe8=; b=Xc3QzSo5yUCcqg
	bBedfASAAbUnvR63QodQU0xIPK4ZzkB01MCV6vn60smFlNhrKdXH5iEJfn9vWs8D385FPf2AUtTxq
	WWRcVW2P6nVQU4z5ISDaNE2PeAy35biVh5NA7tHQnqflRrCsvfJZbWtqEZzLlv4nXn61SwH/t+K0A
	+A9XAileRmbDnA2deCixjNgGEZtH6c9gCB64V9uss7/ojC8RT+zEEZ6ZIruJs600VX/Z9G9XRjZ0G
	AuoGUyxvQhEfgxuOfDo9FneLFqhO463m5QFTJsFcFhznFYYfJbVlt6ERjHlvN1nkOKcwAEiYWP0Pj
	GZ2TP/Akb0/zBztVrhxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4FXe-00085g-Pd; Wed, 19 Feb 2020 02:56:50 +0000
Received: from mx0b-00003501.pphosted.com ([67.231.152.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4FXY-0007ua-Ed
 for linux-nvme@lists.infradead.org; Wed, 19 Feb 2020 02:56:47 +0000
Received: from pps.filterd (m0075032.ppops.net [127.0.0.1])
 by mx0b-00003501.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01J2rjDI024895
 for <linux-nvme@lists.infradead.org>; Tue, 18 Feb 2020 21:56:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seagate.com;
 h=mime-version :
 references : in-reply-to : from : date : message-id : subject : to : cc :
 content-type : content-transfer-encoding; s=proofpoint;
 bh=qZmTA+ytNnq5TZSl7yWOBJAuh8+Bmuhv6AJfdm8vCzM=;
 b=EqNtsbodiGeLdq4qARhBg9/0p2GZWVorg3DafIwiNKZ0dXM0zQcFmnjT8DLLkqpunA+0
 skNNQVz8jfTY+j9WglrMfPNE4vfpQWO93xVci2ppmzEaeivfVLS6TVxqMaCQWvtQnA+5
 TbZeh3/pJjECU225/XEcsrEmDzls1KNzE/2uB+ap3s9jjlJT1YXwjWk4VFkXsxpOWIKZ
 poRYK2lUbYn/uF8WKptJDyKkUAq/fS4Gvdn7Zzqyqya9gtqwhykr5VMKjJnys+YDoLyQ
 XBFHIxsHyTExtl+gPbAi9jcnaBw76Yb3AQ6S6B2FI+Iwhd0f+qm+IBIynEqTYw/Td5vg fw== 
Authentication-Results: seagate.com;
 dkim=pass header.d=seagate.com header.s=google
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 by mx0b-00003501.pphosted.com with ESMTP id 2y8ubb8d0g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Tue, 18 Feb 2020 21:56:42 -0500
Received: by mail-wr1-f69.google.com with SMTP id d15so11877565wru.1
 for <linux-nvme@lists.infradead.org>; Tue, 18 Feb 2020 18:56:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seagate.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=qZmTA+ytNnq5TZSl7yWOBJAuh8+Bmuhv6AJfdm8vCzM=;
 b=FL/IgqlXiJv3xBfn3rwEyy2Vz/KDz4KfrBmoQK7WrJdsxe1zRXbYAVNYMa60xq1yU/
 SZYWLTP1zKUN4K0y7ZVdCD8bgVBQ7I1/9Wi0QrljRGfmVx3krYtjf+OorfyOBPqJO5dm
 61iN2KEGBxgl3M4LXEjrjvnqc4mdpd7v+gy45wb/YTdbt5LZNLBLNeqYx6bjgtpnGYs5
 P6HR/s8oMbi9m/VB0OUfGzX/kaqYRRbG8MyI3yQy5o/SD/qpOcWQqgT3nXWbu5F+Ioem
 FNieRvr17/ZvLL6BSZazsn5SLqe7T32iDGmUFRQKG+E5tC9PBf+xxama2VXhR3ETmy9x
 PrjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=qZmTA+ytNnq5TZSl7yWOBJAuh8+Bmuhv6AJfdm8vCzM=;
 b=p6+10i+klfYMb7iw2d1Dtij7XpYeKKpoCE03rtYud1rKM9C2WEZVNS6x2QsSgZgcd7
 4ldwdqgalpYoAgXHs17as/Omv18UOMOl+3x6nyYW3apUJ2v9GExugVqVtOUkHzgOzgTu
 8DCgqsv5BcDlQXbVF78hCyf5gl6uOOjfcmywWqPuSjzTdoiq0Hqx3pqOKuuj1kfg4NIA
 IJCJFKx5n9ERSRKgk910K76yl8Cdy4sh17ITOYgKfH76m6U0/ok849wrfa2qtI0G6qox
 WlnsXJFnMnw72V91kYgoGgzx7QLdCjKCtz6UfWZNZX/Xj+wgfd+lh9dMTDQhTI5Sjdx4
 LAyg==
X-Gm-Message-State: APjAAAUr+P9RVwCRryHK0RVm2sPZdiZLw6FSYWNppl/f7/zUEqRDsU2Q
 vB0FvXx57Zj7ysGZNkKWqYjrcTs6AY3z46CUEbVKlPjkm5aDLgTfDP/T5iZRyCX+lRtvSe9fcKk
 fjjGgjhmANKKp/el/oRRaUS7ndNdPiMaWtqERn0EYgShoisLDmkBmwxySVvqB40q96GUA
X-Received: by 2002:a1c:5f8a:: with SMTP id t132mr6736226wmb.162.1582081000236; 
 Tue, 18 Feb 2020 18:56:40 -0800 (PST)
X-Google-Smtp-Source: APXvYqylXLzvBtIwP2Fymkb0qJLoUUmmv7Bfqt6/BZKmbDipaJ9HBBHiaoQ61LN4UHkvcFXs5LcfvWzjmRJNliHL8gM=
X-Received: by 2002:a1c:5f8a:: with SMTP id t132mr6736172wmb.162.1582080999759; 
 Tue, 18 Feb 2020 18:56:39 -0800 (PST)
MIME-Version: 1.0
References: <CANo=J16cDBUDWdV7tdY33UO0UT0t-g7jRfMVTxZpePvLew7Mxg@mail.gmail.com>
 <yq1r1yzqfyb.fsf@oracle.com> <2d66bb0b-29ca-6888-79ce-9e3518ee4b61@suse.de>
 <20200214144007.GD9819@redsun51.ssa.fujisawa.hgst.com>
 <d043a58d-6584-1792-4433-ac2cc39526ca@suse.de>
 <20200214170514.GA10757@redsun51.ssa.fujisawa.hgst.com>
 <CANo=J17Rve2mMLb_yJNFK5m8wt5Wi4c+b=-a5BJ5kW3RaWuQVg@mail.gmail.com>
 <20200218174114.GA17609@redsun51.ssa.fujisawa.hgst.com>
 <20200219013137.GA31488@ming.t460p>
 <BYAPR04MB58165C6B400AE30986F988D5E7100@BYAPR04MB5816.namprd04.prod.outlook.com>
 <20200219021540.GC31488@ming.t460p>
 <BYAPR04MB5816DF16BC3720ABF286671EE7100@BYAPR04MB5816.namprd04.prod.outlook.com>
In-Reply-To: <BYAPR04MB5816DF16BC3720ABF286671EE7100@BYAPR04MB5816.namprd04.prod.outlook.com>
From: Tim Walker <tim.t.walker@seagate.com>
Date: Tue, 18 Feb 2020 21:56:27 -0500
Message-ID: <CANo=J15Wvm2R+vuLj6QQ5Vete507cA==5Rw=4vn3Z8npZ=2vww@mail.gmail.com>
Subject: Re: [LSF/MM/BPF TOPIC] NVMe HDD
To: Damien Le Moal <Damien.LeMoal@wdc.com>
X-Proofpoint-PolicyRoute: Outbound
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-18_08:2020-02-18,
 2020-02-18 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 malwarescore=0 mlxscore=0
 impostorscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 suspectscore=0 bulkscore=0 mlxlogscore=999 lowpriorityscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002190020
X-Proofpoint-Spam-Policy: Default Domain Policy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_185644_775117_594BC534 
X-CRM114-Status: GOOD (  36.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.152.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.152.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-scsi <linux-scsi@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Ming Lei <ming.lei@redhat.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Hannes Reinecke <hare@suse.de>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 9:32 PM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
>
> On 2020/02/19 11:16, Ming Lei wrote:
> > On Wed, Feb 19, 2020 at 01:53:53AM +0000, Damien Le Moal wrote:
> >> On 2020/02/19 10:32, Ming Lei wrote:
> >>> On Wed, Feb 19, 2020 at 02:41:14AM +0900, Keith Busch wrote:
> >>>> On Tue, Feb 18, 2020 at 10:54:54AM -0500, Tim Walker wrote:
> >>>>> With regards to our discussion on queue depths, it's common knowledge
> >>>>> that an HDD choses commands from its internal command queue to
> >>>>> optimize performance. The HDD looks at things like the current
> >>>>> actuator position, current media rotational position, power
> >>>>> constraints, command age, etc to choose the best next command to
> >>>>> service. A large number of commands in the queue gives the HDD a
> >>>>> better selection of commands from which to choose to maximize
> >>>>> throughput/IOPS/etc but at the expense of the added latency due to
> >>>>> commands sitting in the queue.
> >>>>>
> >>>>> NVMe doesn't allow us to pull commands randomly from the SQ, so the
> >>>>> HDD should attempt to fill its internal queue from the various SQs,
> >>>>> according to the SQ servicing policy, so it can have a large number of
> >>>>> commands to choose from for its internal command processing
> >>>>> optimization.
> >>>>
> >>>> You don't need multiple queues for that. While the device has to fifo
> >>>> fetch commands from a host's submission queue, it may reorder their
> >>>> executuion and completion however it wants, which you can do with a
> >>>> single queue.
> >>>>
> >>>>> It seems to me that the host would want to limit the total number of
> >>>>> outstanding commands to an NVMe HDD
> >>>>
> >>>> The host shouldn't have to decide on limits. NVMe lets the device report
> >>>> it's queue count and depth. It should the device's responsibility to
> >>>
> >>> Will NVMe HDD support multiple NS? If yes, this queue depth isn't
> >>> enough, given all NSs share this single host queue depth.
> >>>
> >>>> report appropriate values that maximize iops within your latency limits,
> >>>> and the host will react accordingly.
> >>>
> >>> Suppose NVMe HDD just wants to support single NS and there is single queue,
> >>> if the device just reports one host queue depth, block layer IO sort/merge
> >>> can only be done when there is device saturation feedback provided.
> >>>
> >>> So, looks either NS queue depth or per-NS device saturation feedback
> >>> mechanism is needed, otherwise NVMe HDD may have to do internal IO
> >>> sort/merge.
> >>
> >> SAS and SATA HDDs today already do internal IO reordering and merging, a
> >> lot. That is partly why even with "none" set as the scheduler, you can see
> >> iops increasing with QD used.
> >
> > That is why I asked if NVMe HDD will attempt to sort/merge IO among SQs
> > from the beginning, but Tim said no, see:
> >
> > https://urldefense.proofpoint.com/v2/url?u=https-3A__lore.kernel.org_linux-2Dblock_20200212215251.GA25314-40ming.t460p_T_-23m2d0eff5ef8fcaced0f304180e571bb8fefc72e84&d=DwIFAg&c=IGDlg0lD0b-nebmJJ0Kp8A&r=NW1X0yRHNNEluZ8sOGXBxCbQJZPWcIkPT0Uy3ynVsFU&m=nUNT2_IvSlbeY_25S516HctZv4od6WK6h2q2_C4Q8SY&s=TTxCbaBVGOCBZROb7fqSBDCe9wIZrYdBDSCW2TqrLzM&e=
> >
> > It could be cheap for NVMe HDD to do that, given all queues/requests
> > just stay in system's RAM.
>
> Yes. Keith also commented on that. SQEs have to be removed in order from
> the SQ, but that does not mean that the disk has to execute them in order.
> So I do not think this is an issue.
>
> > Also I guess internal IO sort/merge may not be good enough compared with
> > SW's implementation:
> >
> > 1) device internal queue depth is often low, and the participated requests won't
> > be enough many, but SW's scheduler queue depth is often 2 times of
> > device queue depth.
>
> Drive internal QD can actually be quite large to accommodate for internal
> house-keeping commands (e.g. ATI/FTI refreshes, media cache flushes, etc)
> while simultaneously executing incoming user commands. These internal task
> are often one of the reason for SAS drives to return QF at different
> host-seen QD, and why in the end NVMe may need a mechanism similar to task
> set full notifications in SAS.
>
> > 2) HDD drive doesn't have context info, so when concurrent IOs are run from
> > multiple contexts, HDD internal reorder/merge can't work well enough. blk-mq
> > doesn't address this case too, however the legacy IO path does consider that
> > via IOC batch.>
> >
> > Thanks,
> > Ming
> >
> >
>
>
> --
> Damien Le Moal
> Western Digital Research
[sorry for the duplicate mailing - forgot about plain text!]

Hi Damien-

You're right. The HDD needs those commands in its internal queue to
sort and merge them, because commands are pulled from the SQ strictly
FIFO which precludes any sorting or merging within the SQ. That being
said, HDDs still work better with a good kernel scheduler to group
commands into HDD-friendly sequences. So it would be helpful if we
could devise a method to help the kernel sort/merge before loading the
commands into the SQ, just as we do with SCSI today.

Ming:
Regarding sorting across SQs, I mean to say these two things:
1. The HDD would not try and reach up into the SQs and choose the next
best command. I understand the SQs are FIFO, so that is why NVMe HDD
has to pull them into our internal queue for sorting and merging. Our
internal queue has historically been more than adequate (SAS-256,
SATA-32) to provide pretty good optimization without excessive command
latencies.

2. Also, I know NVMe specifically does not imply any completion order
within the SQ, but an NVMe HDD will likely honor the submission order
within any single SQ, but not try and correlate across multiple SQs
(if the host sets up multiple SQs). I believe this is different from
SSD. I think of this as being left over from SAS/SATA where we manage
overlapped commands by command order-of-arrival.

Many HDD customers spend a lot of time balancing workload and queue
depth to reach the IOPS/throughput targets they desire. It's not
straightforward since HDD command completion time is extremely
workload-sensitive. Some more sophisticated customers dynamically
control queue depth to keep all the command latencies within QOS. But
that requires extensive workload characterization, plus knowledge of
the upcoming workload, both of which makes it difficult for the HDD to
auto-tune its own queue depth. I'm really interested to have this
queue approach discussion at the conference - there seems to be areas
where we can improve on legacy behavior.

In all these scenarios, a single SQ/CQ pair is certainly more than
adequate to keep an HDD busy. Multiple SQ/CQ pairs probably only
assist driver or system architects to separate traffic classes into
separate SQs. At any rate, the HDD won't mandate >1 SQ, but it will
support it if desired.

-Tim
-- 
Tim Walker
Product Design Systems Engineering, Seagate Technology
(303) 775-3770

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
