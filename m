Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B1C22134
	for <lists+linux-nvme@lfdr.de>; Sat, 18 May 2019 04:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RG/AseFlYiXzzQIWd6DAk06OoXv6ea25wjyqnJrsbM=; b=jGUMEJJx9GnVcJ
	XcsbPNbTCawUU+Q4QsAtLYlUqrI+h4xZhjiymlnTC/34ZMiEMXylNSMICg/zQD5RCHwd/b3fb8+WS
	spAJxGfdrAe5vNgnMrDqavUH08P6hQTzhsJWOcu3erRaCYcmU3mcmqIiWIr5BhFl4Old6qUL3q3mN
	5JUyy1oAQzA3yUiCVf/ltBk2Q6By1qBd0Y7ZOoPfp6NHDwXKi5LApiucOnO26R8LYFzt/q108mrTl
	63IJ2rr4VPip3MPt77lValqsdvrWdDrVeC5lAp/ExpM6Y6tZ3c60WwnDTwDgI8UrJDHCg515HqBA5
	RVzz6M44WYmB0wX/k2FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRooi-0001ou-Ka; Sat, 18 May 2019 02:11:20 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRood-0001ob-TT
 for linux-nvme@lists.infradead.org; Sat, 18 May 2019 02:11:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id q17so4520951pfq.8
 for <linux-nvme@lists.infradead.org>; Fri, 17 May 2019 19:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3SCAm5Zq9a15xoviAUKhscfgnMAxTPYSbJX8WFIfcjg=;
 b=cnUkpa8qykQ7tjdrALnTLaclTy77uEWIIjyivQXtf9+SsSFt++IJfV58eu93EKs9xO
 i/+4c8YlTUzEx6aGuaTjA3YhdGYvPNRN71+3mSR1NS/DrQvjqOrwzfjkjiOyvXaoNpnV
 OhcawlAb+e8fcfyk+YFkasD9XGm3a5hUDt6GE3nrLiwaoYtz5Z7Y0MTgWb/zgK6UdbEu
 axX9PcI6k9tmC5RVjWlPfyRzy757+glaDpJqyW/boIx0Gsn6sVlRwnEkRXi5NUelTki/
 MF6qiP6ir9zkO9TQl9M1fd9j99hxcLOT0csZD9nh1tx5uCr9l6V2n+N+9HuN9eM1GobY
 eZrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3SCAm5Zq9a15xoviAUKhscfgnMAxTPYSbJX8WFIfcjg=;
 b=PCUAkE4kMaQLhuagntuoYgwoCCaw5b7w5KIO0gVSHIIWg1Li+BsWlfjQuYlXcByQWv
 NjCq0t15TpL3TpMAP+wNlJ9SomCGRwUA8Kfrfblaz3PK/6Udrc6AlUw4M6vzlaygNoQk
 QWQJcO0c9wKiyeXRguql1qcK/vmqtqqzXXpSNNAvMEfci3aNkDmkjHtR+j6BE3RT36Cx
 l2rFX/xWYjetIF4EEbhnVMmuqk/OgCY94Ztr/sslyLnPqn/SiT6m3WHmcVpZfBD9mhyo
 hWuTxBq8cRf+u2xQEuI/mFy/S5Agl33tUv+/QouPUJRt9atzU67//Wm9JBGKWhX6xw/H
 nd8A==
X-Gm-Message-State: APjAAAWrim8hx/CsW5T/MJbd5AQYtfvnBO7THly1LGBVFNCLwA1Wk+a/
 YOkvrD/Iwxy8e1jzYMlxUBK8hWmgSRI=
X-Google-Smtp-Source: APXvYqzQpjdy3zs5XkesNR4PzH2qhrX91Y70oIRG6MnzjnEhVI8/xVqvP/vj7Gnr1eIhJgKw6qfxFA==
X-Received: by 2002:aa7:95bb:: with SMTP id a27mr53430791pfk.30.1558145474092; 
 Fri, 17 May 2019 19:11:14 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id f36sm9535206pgb.76.2019.05.17.19.11.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 May 2019 19:11:13 -0700 (PDT)
Date: Sat, 18 May 2019 11:11:10 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: Re: [PATCH V2 0/4] nvme-cli: Introduce nvme-status mapping with errno
Message-ID: <20190518021107.GA31204@minwooim-desktop>
References: <20190513170342.9497-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513170342.9497-1-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_191115_953033_0EB6F22A 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <keith.busch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-05-14 02:03:38, Minwoo Im wrote:
> Hi,
> 
> This patchset introduces nvme-status module to manage mapping
> relationships between nvme error status and errno.  It cannot be
> directly mapped in 1:1, but we can figure out what kind of errors
> happended by the return value of nvme-cli.
> 
> NVMe status fields are 16bits to indicate, but UNIX return value from
> main() will be parsed in 8bits so that we need to do something about
> return value to indicate nvme error status.
> 
> Please review.
> Thanks,
> 
> Changes to previous C1:
>   - make switch-case inline in nvme-status (Chaitanya)
> 
> Minwoo Im (4):
>   nvme.h: Fix typos in status code values
>   nvme-status: Introduce nvme status module to map errno
>   nvme: Return errno mapped for nvme error status
>   fabrics: Return errno mapped for fabrics error status

Ping :)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
