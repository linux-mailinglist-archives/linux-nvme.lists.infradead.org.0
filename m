Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8822363C87
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 22:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KJ7lnJf2uamhLD1AqypYw9SjfFlrVxIcfXkH7sNuHqM=; b=lCYnqyBQ41Jyp3uzPmHIKgftY
	TVXVpcG1QXQ/8Q0a+xsGw3sluSu8fQTwBCZ/FdqG7sCqNc5T+YppG7kMTHFCw5C/WzjzdbFz9x6Oo
	H0UtdWxcqMbhz7APty6qI9qWvKyTUpSAgCkYEhbDyxrP5nOb47yc74ls1XpZPrmjU2VE71vlP6NaD
	tPJ0rrC62yAP2l5O4Q92dyw+OMXW6lNyLx10f8zJkrVf2J8vxph4tzd5wmI0VKpHNcfNpterF1Pyy
	QCV+CD7fu2atPB57GO8x6v1qGUSYVBeudSAI9tWYV7V0O3lOt560IkuxzbW8I7zsdWIwUPP260sc+
	rAqdLVL1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkwRJ-0006i0-OL; Tue, 09 Jul 2019 20:10:13 +0000
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkwQP-0006FM-OE
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 20:09:19 +0000
Received: by mail-oi1-f171.google.com with SMTP id a127so16343472oii.2
 for <linux-nvme@lists.infradead.org>; Tue, 09 Jul 2019 13:09:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nmV9qfqaWLO7hJPj3BChLxJ6TWcoMeM/I4tytCodgMY=;
 b=JDoCiUNQnlYuTyXs4IUxfHlavJTceix+jVrlZvWQLrJk+AfYES8e6SyQ93QMMHmSh7
 rSFLd01ulIkNsFOP9bGJHkOKy12RNphKNil5xEnl/12CHByv3XiQ/X6AuBdydE1XYvCN
 FrFVgQLjl1RvM3tY0QZSd48kf5KY3jkiO6+TxK7bSM4QKPBPA2w7yNfrCM+RAhNkTlx1
 qrvW/vq+9BheqR3wJA9GbpN18U0+mbh+ewuV+OkzV2BES+UQl5mIo+P8Ie4NuwHhKwAE
 DOcOQscq8RMVyj+cTBjAcmNtuY1YKf6FhdP4e7oRNOJYe60YfzIjLJcOo8Bp+rrevp78
 pwCQ==
X-Gm-Message-State: APjAAAWfjGRQBv8tANMpad3MjViZjdvdN+AJa/3S6+cS3Y1vrbkBbm39
 FtpoxtktgRRR6yFZD6Sb+z6X52lk
X-Google-Smtp-Source: APXvYqynRtcTVCmLyUHUyoWoiVLc3R1k2VRHECVuKNy+xEx+F53wJX44m1g/iQtRlcEUUEM0v72g8Q==
X-Received: by 2002:aca:dd04:: with SMTP id u4mr1085342oig.152.1562702956369; 
 Tue, 09 Jul 2019 13:09:16 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id l24sm7007800oil.42.2019.07.09.13.09.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 13:09:15 -0700 (PDT)
Subject: Re: Should hot removed devices close open namespace bd references?
To: "Derrick, Jonathan" <jonathan.derrick@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <d7027ad47e28339f13eb2d7f1bff4c7749da1160.camel@intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <32a2e339-b948-43fe-72a3-77eb2e626c63@grimberg.me>
Date: Tue, 9 Jul 2019 13:09:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <d7027ad47e28339f13eb2d7f1bff4c7749da1160.camel@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_130917_877991_E8310220 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Hello,
> 
> 5.2 shows a strange regression where if a namespace handle is open and
> the device is hot removed, then hot inserted, the new controller
> instance fails to enumerate.

This is due to 1b1031ca63b2 ("nvme: validate cntlid during controller 
initialisation")

> Previous kernels back to the multipathing introduction would simply add
> the new namespace to the previous controller's subsystem id, so you
> would end up with something like:
> /dev/nvme2
> /dev/nvme0n2
> Because the subsystem namespace instance is 2 upon enumeration as the
> previous handle hadn't been released through the block layer.

Its the controller that is not released (as the open ns handle holds
a reference to it). But what is the old controller state? the code
is supposed to allow this check if the old controller is in
DELETING/DEAD.


> 
> With 5.2, I instead see:
> [  247.767504] nvme nvme2: pci function 10000:01:00.0
> [  247.772642] nvme 10000:01:00.0: enabling device (0000 -> 0002)
> [  247.778671] pcieport 10000:00:02.0: can't derive routing for PCI INT
> A
> [  247.785411] nvme 10000:01:00.0: PCI INT A: no GSI
> [  247.899879] nvme nvme2: Duplicate cntlid 0 with nvme0, rejecting
> [  247.906086] nvme nvme2: Removing after probe failure status: -22
> 
> 
> Here's a test program:
> #define _GNU_SOURCE
> #include <sys/types.h>
> #include <sys/stat.h>
> #include <fcntl.h>
> 
> int main(int argc, char *argv[])
> {
>          int fd;
> 
>          fd = open("/dev/nvme0n1", O_DIRECT);
> 
>          for (;;)
>                  ;
> }
> 
> 
> 
> Run this and in parallel, remove the link from the upstream port:
> setpci -s <BDF> CAP_EXP+10.w=10:10
> And add it back:
> setpci -s <BDF> CAP_EXP+10.w=0:10

If you wait a bit between these operations, does it work as expected?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
