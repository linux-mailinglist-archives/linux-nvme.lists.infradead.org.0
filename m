Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F6988F43
	for <lists+linux-nvme@lfdr.de>; Sun, 11 Aug 2019 05:43:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFX+7tKyURBEFtMNcdm7LvsZcAVk2rx3sVF7UllC+X0=; b=ufszsxC/PUd6W1
	cViB2lcwGX8+2i2igiPRYgy5ECCyGI4oMbQHz9KKOsUgGMOkPVxTO3PYG5At17L387Y1vyoRI8mml
	SK7w0qBG1KPVtmSdB1/G6Q5dJbAGHEfSONPwtOvTfPJ1yzl4TZMh5YG7226KWq7g2fNbQaWb8V9nm
	2iUOmWC0HpxXJlh7/VoWfKEBprQh2Z8bweIi7AHJBTU9FiG53lgeUMH/UPzz8X8lIqdYu9oG/ADOX
	eW5m/scSce0DEtZO9H0V1fZv/uanVGbZg4hBLMJilnCD3xhj9XNS05dcgl4k/19RiAogAUCSTMO60
	0RLWkwKrysWKCPt08KAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwekq-0007FF-Mh; Sun, 11 Aug 2019 03:42:48 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwekc-0007EG-0Q
 for linux-nvme@lists.infradead.org; Sun, 11 Aug 2019 03:42:36 +0000
Received: by mail-pf1-x436.google.com with SMTP id q10so48066071pff.9
 for <linux-nvme@lists.infradead.org>; Sat, 10 Aug 2019 20:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PgsuYxiLoGK874FRLcdnMRboQnW+LHJZCrpaesp3KQA=;
 b=dEYhpeOm5qL+q+JRfzEGAOIurMo8YXGbve4fsJQ3YSjA60qHwxOrDVTrU3DLraGQHf
 qsc47u8JNaF+sOKhn4CU3XqZWEQQtuP9TtVJK+QEAmoWC4WVKkj1NmcX9N/h/IgOC/sD
 YZvCnUCrOSy08OZzYgm15uqwc+yxoPXKx+0rXMxtlFII22ac49yW5qKm7Kxks7JaGOYi
 T4gCWWfdFere442wz1iTqIgZI6EXKSTbRa76BVwSk7pT+5BX0I+zdfbV6xvCDsN+uM2Q
 9mS7JA1hMEMmcZnMzgA98P5Iy7j5UJzUpRZRflv/a6fRzU5F+1AeGHpg+lo3CrNEQ8GX
 OiYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PgsuYxiLoGK874FRLcdnMRboQnW+LHJZCrpaesp3KQA=;
 b=A+jWQepD0Lrck//0l6CDM95OYCkrrguaShFCvmvnlPZtXur9a8F+M8q62HGqSXFGiT
 Yoj+tkcISDcTKE9XHKGREcE7YiHmx3qfGlU7snG/6voZNbmGbW0SUl3XGF/EI/JSC6xl
 Tl2p01CTKNz3il3e6q5J/AMrQ7mDR/1IhkqCfomLSRtnMvCwM8MjdO964CH8SlsviSNB
 p9UFj/YjZ93+Egw+R9C+Yn+eX2u8wr1kCgeWAb823H0/ykpITbUEgHgQBl9G28djXNfo
 q2Mvgstd/F2IiroYOpvVc+8ATepntuCTw6E9uuWz97+V/CikedzGWZMZmsTG590Uvhyu
 rxNA==
X-Gm-Message-State: APjAAAXX7VSD539zdcVuiC8IbBGkBbZhfESXG1bhpgGDU+hJ7b6WgAcX
 d1DZ6i37VhpYlsFgAPG3W4SQOw==
X-Google-Smtp-Source: APXvYqxZX2jyTF5PKPzqF2IK2XdCkET093y28kEoHcLuA8UyScUBAoB8KAwq20TDoTutPEL3ApyCcg==
X-Received: by 2002:aa7:92cb:: with SMTP id k11mr30121089pfa.126.1565494952137; 
 Sat, 10 Aug 2019 20:42:32 -0700 (PDT)
Received: from [192.168.1.188] (66.29.164.166.static.utbb.net. [66.29.164.166])
 by smtp.gmail.com with ESMTPSA id 97sm9368266pjz.12.2019.08.10.20.42.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 10 Aug 2019 20:42:31 -0700 (PDT)
Subject: Re: [GIT PULL] nvme fixes for the next round of 5.3-rc
To: Sagi Grimberg <sagi@grimberg.me>
References: <20190809180412.26392-1-sagi@grimberg.me>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <e49babd9-ed35-20e5-7826-a3d0a8ea9107@kernel.dk>
Date: Sat, 10 Aug 2019 20:42:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190809180412.26392-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_204234_204725_205449F9 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:436 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-block@vger.kernel.org, Keith Busch <keith.busch@intel.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/9/19 11:04 AM, Sagi Grimberg wrote:
> Hey Jens,
> 
> Few nvme fixes for the next rc round.
> - detect capacity changes on the mpath disk from Anthony
> - probe/remove fix from Keith
> - various fixes to pass blktests from Logan
> - deadlock in reset/scan race fix
> - nvme-rdma use-after-free fix
> - deadlock fix when passthru commands race mpath disk info update

Pulled, thanks Sagi.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
