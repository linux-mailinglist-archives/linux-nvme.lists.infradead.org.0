Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CD316F411
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Feb 2020 01:08:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VTrZrtGSbb1UVmljnQSeaRA20M1xsvcm664maMHn/G8=; b=jqcgCx3r07SdEIEW/HoPJOaaY
	SmRGJl8rjk5Fi70f5Jq1Y/oANRGN49V3GqzF2YE0OkoS+yvNtT/Een5f/g9/tppqdtVBRpfSH7rn0
	KrbYO6K4WYwjr6ujagsOqK1zVb2df+CJNxbu+L8L3DXzqlPvXHW4Fi7dto8HPyUgbZ3aUY/uh83Rw
	8mIyBQtNDRRWnQCBj1Z1J5AwGmbq+4eOl9mWwkvG6dAHyN7Qao4kMGAEY96gJ+5ct+A6RxiNchhAI
	dLFk/EUToT4toflTbEtXY8wHIHkGL0JKWM+WTRELnIpcR0r9PjfVbzq8QnJOVeSGYc4gYkd7oAagR
	6b7LOnTWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6kFm-00039p-A2; Wed, 26 Feb 2020 00:08:42 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6kFi-00039O-7O
 for linux-nvme@lists.infradead.org; Wed, 26 Feb 2020 00:08:39 +0000
Received: by mail-oi1-f193.google.com with SMTP id a142so1206696oii.7
 for <linux-nvme@lists.infradead.org>; Tue, 25 Feb 2020 16:08:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=o7Ah2apMDrFCZBx3lEjD0plQyeiBRH17wEt3J3AS5ec=;
 b=hiERSEeY2jz/eMPVsSSO3Kh69GHks1ozowbnr5wUBfOomq+OI4Nu7Sjqiy9UFqZr6I
 iyxQBGjs8PTveBbH8U0w8wpYtqMmPhZjbycITzDo4xmNQRWMxz072GLBhAxgaUAysq9g
 0XgU9LnWkcRIDb+qD23dex/L5BOHJLTaWvv+UeNQh19izvOvZ7jL+Mh51/uWP0lIn9+y
 hvP/G58t0pNBBke3ViC0ucHMuJVOge+8s5oeuCtfB0oh7WD42kJ/I5p88iK4P2AYRhl9
 2W5TkJ35IYCXQXh9Ydg13y7JkxDVSheU2J7INHNEi6+9zzI8TeC1o3k8+bBw2rgAALtV
 vG9A==
X-Gm-Message-State: APjAAAVtUYIx6hLa4yPdSZaQXYTCoAG1xbgLTQuDE4IBoIDQkbY3LlO1
 DXpxVXnZPw+eLYLi4OtwgBfeiuKr
X-Google-Smtp-Source: APXvYqzwzPNHnzzEeJpV8bFBqhBTyU5+608DE5TBbKZmKXdFaqJgeYJIe1zgnSyCZL5JoOPNFXj+Bg==
X-Received: by 2002:aca:815:: with SMTP id 21mr1173752oii.52.1582675716769;
 Tue, 25 Feb 2020 16:08:36 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id z10sm99275oih.1.2020.02.25.16.08.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Feb 2020 16:08:36 -0800 (PST)
Subject: Re: [PATCH RFC] nvme/fc: sq flow control
To: Hannes Reinecke <hare@suse.de>, Keith Busch <keith.busch@wdc.com>
References: <20200225235956.28475-1-hare@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d1aabd1c-dd2a-df7e-3735-dd36c3f1c53f@grimberg.me>
Date: Tue, 25 Feb 2020 16:08:34 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200225235956.28475-1-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_160838_267335_528AAB38 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-nvme@lists.infradead.org, James Smart <james.smart@broadcom.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 John Meneghini <john.meneghini@netapp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> As per NVMe-oF spec sq flow control is actually mandatory, and we should
> be implementing it to avoid the controller to return a fatal status
> error, and try to play nicely with controllers using sq flow control
> to implement QoS.

Why is your target setting SQ flow control disable in the discovery
log entry treq field? We are not supposed to do it if the NVM subsystem
doesn't support it.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
