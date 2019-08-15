Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F508F28B
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 19:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SPhKSKdQ0LnZDB80hHVs9LO86gt/PmLWC5Wc+Asqezg=; b=sH59zVzOWH7xr2rNfHA67hoEk
	0TGPoaM/Yum8Kp6ZEik7/rlNBWhZg1DtIjwb84WvQv1H1Ixb12j01YJdo6vspjZ01dGo1b46EkSwb
	SdW5lmpotbCDa7qdbbmc+0v8sB4FcehxBD82OOhXxsc/MVqa+yS9dnU5Vfau3dyFOd5QXVG7hWgJy
	GiVTkVcVh15DiD5nOD1NVhVbIGdXp2qDbftX5ce/mF/X3w/CAaakW58parhhm5jwJna432HgnGmYw
	IU8+tRc39UhGMguHsBOaoDwRzGWy6KFrEqLQtPg+3lDMwrgODQAjJ4qjHlbseQo5jAA+6D9KB42r/
	fwbFVMnQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJoM-0001pU-6v; Thu, 15 Aug 2019 17:45:18 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJoC-0001p9-FM
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 17:45:12 +0000
Received: by mail-oi1-f195.google.com with SMTP id c15so2849457oic.3
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 10:45:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BmB19g0faBuaj/Qc/JwBxXCN4WJ/eovh2a4FjsGWi5M=;
 b=T9nlMxXvAtoejMVIKXv61wTrAmM5s/ZHCqBRm0PcifY97HaAW2g+16CMgOXUBLstBv
 svyQhchN4SJFV3djgIIRfdmZ91NnCA4d+4G5jo8b0hT2c/DuwertZSjGcVitNxI9xCEP
 M5eoZLgcCp2cSaWID56S8OF0Mbp7yICfD95r1BR5oQNP2RZU1vQsTdcAqZU/eQjVM2kd
 HnQGjqyBpBank0bsofB+M2WvMNopie/mSJrCCXRszkApULlm34UA21ZG1OCfYboTE22a
 fs2LrZE0Oj9rwy3FyTebSfqcbzTniFzVlO1s0egWhZuCSi/VeanJipLsL7wkKEXTG3Ak
 iMRg==
X-Gm-Message-State: APjAAAUx+ZHhxr7sNw1JIktn/MDQJ7l9N2ARknzGm1Td5SMG9QVpfMhc
 5eDbgRdZlhL6hzy7wpLIjGo=
X-Google-Smtp-Source: APXvYqwTO9GayyxmfRaxBdav1ltVgAl9Y8an8KEtFqtRC6tbrMHWPpBPKf1J8XuI9z8O7QHbkdcaQg==
X-Received: by 2002:a05:6808:255:: with SMTP id
 m21mr2205385oie.29.1565891107473; 
 Thu, 15 Aug 2019 10:45:07 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id r130sm649920oib.41.2019.08.15.10.45.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 10:45:06 -0700 (PDT)
Subject: Re: [PATCH v6 0/7] nvme controller reset and namespace scan work race
 conditions
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
References: <20190813064304.7344-1-sagi@grimberg.me>
Message-ID: <0c8606d6-a841-a24b-0a8e-64edc4c3ccbd@grimberg.me>
Date: Thu, 15 Aug 2019 10:45:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813064304.7344-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_104508_517231_DB94277F 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 James Smart <james.smart@broadcom.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hannes, Keith, James,

I think this series got the blessing from Hannes and Keith, but
I also want to hear from James.

Also Hannes, did you happen to give this a try? it would help a lot
knowing that it fixes the issues you were seeing.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
