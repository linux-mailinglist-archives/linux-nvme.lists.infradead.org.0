Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5156988C34
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 18:20:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gD6feh2El7Jm83RoMnYbetLFhRWLdekwWBJtQT0wAuQ=; b=Gx8ReqFwRJOHvof05Dw71OKVs
	AkKZxYfriNo3Ik9M6DViJsgJVBPXsg+VvVs1xem9UkWsD6rhDauiodh9HFfE+Qjt861Rz5RcMRpkv
	hehuxDTJfsYzQE58xbBx/Coc7kenG8b+J57lgjKSw31VZquegjlAlYKYVKYLGyJsJ3sqxdeLCuAQT
	I+SFeq7Yaw/j/I6m9VmkT3NoyLW6ilQDSerrtH5503T92K2puKRquBAVoOSlVSQWLhWsYJJfQfnmV
	5bSTeDXj+AJ2v9lx5cAqTkFVMiX1hrxMqfUZ6yD3SB+wVaOzVMY+mPrNSz4azUWm9KQqBUhXhIm6k
	mTJOEmFBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwU6W-00015Q-0O; Sat, 10 Aug 2019 16:20:28 +0000
Received: from cp120.sp-server.net ([195.30.85.120])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwU6F-00014d-6E
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 16:20:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=familiesteiner.de; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sKTLfk8K9SjhDpUf4GXwgavY4u6umKfNFkXSIwX5Gyg=; b=pTemYD2wObtFALk/8QHRiYdFZJ
 Qnk6PJqmTpXeXkOBeaZB3Kj/UMyv+SdQE/iFPwE4juYBVpfTMtCIfbtKuhKnNCLKd7V+zeGxiFWZR
 aIYYjY+larFbC3Y7Est3rlpvRK9iuCnPmzrbmbX+o0l8Tki66h3y2snxMZzR+t2+8FGsK3hyFvzG6
 rESBs8xInTybfvBkDrf0AHbsaxkNzsbT5gJVCZYcRboycxrhB5VCa7On7u0lVI9svlMA7N+ygYopH
 V2NuEQCRg1GX3L7OsmjxrUCSpg45kuZUF92+QiQ1/x7Y0hfcC8Yqt7xh2xfJCCBpu/LmOIZV9xj2q
 aY7iq1cA==;
Received: from [2a02:810d:e80:408c:4a2a:e3ff:fe44:40d9] (port=36846)
 by cp120.sp-server.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <fsteiner-mail1@bio.ifi.lmu.de>)
 id 1hwTV0-0007gE-1g; Sat, 10 Aug 2019 17:41:42 +0200
Subject: Re: [PATCH v2 0/3] introduce LED block device activity trigger
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-block@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org
References: <1563807552-23498-1-git-send-email-akinobu.mita@gmail.com>
From: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
Message-ID: <0c3fa931-bdcd-5e7c-3d2a-16c8d6a95d28@bio.ifi.lmu.de>
Date: Sat, 10 Aug 2019 17:41:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1563807552-23498-1-git-send-email-akinobu.mita@gmail.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp120.sp-server.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - bio.ifi.lmu.de
X-Get-Message-Sender-Via: cp120.sp-server.net: authenticated_id:
 steiner@familiesteiner.de
X-Authenticated-Sender: cp120.sp-server.net: steiner@familiesteiner.de
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_092011_681886_BBD99011 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [195.30.85.120 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Dan Murphy <dmurphy@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Akinobu Mita wrote:

> This work is inspired by the report on linux-nvme mailing list.
> 
> disk-activity trigger not working for nvme disk:
> http://lists.infradead.org/pipermail/linux-nvme/2019-July/025253.html
> 
> This LED block device activity trigger works with any block devices.

I've backported/hacked this (together with the "rename LED_OFF and LED_ON"
and some additional patches) to the current SLES 15 kernel (4.12.14)
and can confirm that it works great for my Thinkpad T580 with e.g. the
FnLock LED, as well as for all our office desktops, using block-nvme0n1
as trigger.

cu,
Frank


-- 
Dipl.-Inform. Frank Steiner   Web:  http://www.bio.ifi.lmu.de/~steiner/
Lehrstuhl f. Bioinformatik    Mail: http://www.bio.ifi.lmu.de/~steiner/m/
LMU, Amalienstr. 17           Phone: +49 89 2180-4049
80333 Muenchen, Germany       Fax:   +49 89 2180-99-4049
* Rekursion kann man erst verstehen, wenn man Rekursion verstanden hat. *

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
