Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 847731C5315
	for <lists+linux-nvme@lfdr.de>; Tue,  5 May 2020 12:24:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Oz/PXhEY9BaX/JRXswdfo9/q8v9Odd89SEicTkDRRo=; b=h+lzVVObzI7/z1
	s3LBww2EBS6nQRvQ2BbFr2OWKYR67vd2ZrEc6l3muVT0NOKQkrDwglqwyy2/xsJsAOFsFroljqBoD
	erNq2hKg9AHHcEo8JrFm2GlFjOScrCKR0yiSqLk4g7re8nqwsyha0q1IKatS9R991aOeGetPRN3Dh
	2NDXoFh/mJLm+SkJLFYY74Mfie/pti2lNmAvsmIjz9iSmCPshdUwoIPS4OH3MoDWflmaEVbTZ8QGh
	k1nPjYjbOuV7dIdcT3CBhARqAonN0f6V17pLbR+WrKls2yeA1xmreawFOPw8VXu6fYl7yVMRTuZMe
	AOoNw1SCZ7cukvn1q4cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuk5-0002xh-JM; Tue, 05 May 2020 10:24:01 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuk1-0002xG-LJ
 for linux-nvme@lists.infradead.org; Tue, 05 May 2020 10:23:58 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id AA65368C65; Tue,  5 May 2020 12:23:55 +0200 (CEST)
Date: Tue, 5 May 2020 12:23:54 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/2] nvme-tcp: set MSG_SENDPAGE_NOTLAST with MSG_MORE
 when we have more to send
Message-ID: <20200505102354.GB15038@lst.de>
References: <20200505052002.14924-1-sagi@grimberg.me>
 <20200505060907.GA3995@lst.de>
 <f0f28e18-c432-8343-f7a7-79cb3159b43c@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f0f28e18-c432-8343-f7a7-79cb3159b43c@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_032357_850093_248F0375 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Keith Busch <kbusch@kernel.org>,
 Mark Wunderlich <mark.wunderlich@intel.com>,
 Anil Vasudevan <anil.vasudevan@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 11:50:57PM -0700, Sagi Grimberg wrote:
>
>>> We can signal the stack that this is not the last page coming and the
>>> stack can build a larger tso segment, so go ahead and use it.
>>
>> Maybe you wan a little helper that returns the flags based on a last
>> flag?  Something like:
>>
>> static int nvme_tcp_msg_flags(bool last_page)
>> {
>> 	if (last_page)
>> 		return MSG_DONTWAIT | MSG_MORE | MSG_SENDPAGE_NOTLAST;
>> 	return MSG_DONTWAIT | MSG_EOR;
>> }
>
> You have it reversed, the flag here probably means more...
>
> Let me see if it is useful to have, will let you know...
>
>>
>> or do we have a case where we don't want to set EOR?  At least the
>> target seems to currently have such a case.
>
> As a design goal, we try to tell the stack explicitly if we have more
> to send and if not we want to push it down to reduce latency. So
> I think we need to have it in the target as well.

What I mean is that nvmet_try_send_data and nvmet_try_send_ddgst may set
neither MS_MORE nor MSG_EOR.  Is that intentional?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
