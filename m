Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDDF9E3A6
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 11:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SiPKGqcnCRRyMIsnh3XxosB6NmvUFhJtgH9QfwqpF4g=; b=fmMlJQCJCP9+9H
	GfYguqWDGpThBJrxfMGLOczzt96KVBa/34TLJheLrYqDHOoPnWHmDNgzKJYinvsast40Ictnq14v+
	8k4vRAuZYUEIWdn1gU4hFUFOYhypdcIv8CNgRBvmk02WiFoIiqsMSqAWpbv8Z80JqDRlbSCBgkU9I
	aki/nyNVnbQkbQ+ck6SBVO0ztuZNZUWcIoMq9omd13QI6FDosnyIM/V47f7DVT9qvjdRRm/q4BSzH
	h803EKSveHwo14cKysj9xSrqeEGdAHXQXhVXF00bULUa6J1kkEOxgL27Exlh4wsX193zR34OmmP60
	wu0/BKZitv/3+skAoE4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2XRg-0003WE-JB; Tue, 27 Aug 2019 09:07:21 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2XQm-0002s4-Se
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 09:06:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 70185AD82;
 Tue, 27 Aug 2019 09:06:21 +0000 (UTC)
Subject: Re: [PATCH 3/4] nvme: pci: pass IRQF_RESCURE_THREAD to
 request_threaded_irq
To: Ming Lei <ming.lei@redhat.com>, Thomas Gleixner <tglx@linutronix.de>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-4-ming.lei@redhat.com>
From: Johannes Thumshirn <jthumshirn@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=jthumshirn@suse.de; prefer-encrypt=mutual; keydata=
 xsFNBFTTwPEBEADOadCyru0ZmVLaBn620Lq6WhXUlVhtvZF5r1JrbYaBROp8ZpiaOc9YpkN3
 rXTgBx+UoDGtnz9DZnIa9fwxkcby63igMPFJEYpwt9adN6bA1DiKKBqbaV5ZbDXR1tRrSvCl
 2V4IgvgVuO0ZJEt7gakOQlqjQaOvIzDnMIi/abKLSSzYAThsOUf6qBEn2G46r886Mk8MwkJN
 hilcQ7F5UsKfcVVGrTBoim6j69Ve6EztSXOXjFgsoBw4pEhWuBQCkDWPzxkkQof1WfkLAVJ2
 X9McVokrRXeuu3mmB+ltamYcZ/DtvBRy8K6ViAgGyNRWmLTNWdJj19Qgw9Ef+Q9O5rwfbPZy
 SHS2PVE9dEaciS+EJkFQ3/TBRMP1bGeNbZUgrMwWOvt37yguvrCOglbHW+a8/G+L7vz0hasm
 OpvD9+kyTOHjqkknVJL69BOJeCIVUtSjT9EXaAOkqw3EyNJzzhdaMXcOPwvTXNkd8rQZIHft
 SPg47zMp2SJtVdYrA6YgLv7OMMhXhNkUsvhU0HZWUhcXZnj+F9NmDnuccarez9FmLijRUNgL
 6iU+oypB/jaBkO6XLLwo2tf7CYmBYMmvXpygyL8/wt+SIciNiM34Yc+WIx4xv5nDVzG1n09b
 +iXDTYoWH82Dq1xBSVm0gxlNQRUGMmsX1dCbCS2wmWbEJJDEeQARAQABzSdKb2hhbm5lcyBU
 aHVtc2hpcm4gPGp0aHVtc2hpcm5Ac3VzZS5kZT7CwYAEEwEIACoCGwMFCwkIBwIGFQgJCgsC
 BBYCAwECHgECF4AFCQo9ta8FAlohZmoCGQEACgkQA5OWnS12CFATLQ//ajhNDVJLK9bjjiOH
 53B0+hCrRBj5jQiT8I60+4w+hssvRHWkgsujF+V51jcmX3NOXeSyLC1Gk43A9vCz5gXnqyqG
 tOlYm26bihzG02eAoWr/glHBQyy7RYcd97SuRSv77WzuXT3mCnM15TKiqXYNzRCK7u5nx4eu
 szAU+AoXAC/y1gtuDMvANBEuHWE4LNQLkTwJshU1vwoNcTSl+JuQWe89GB8eeeMnHuY92T6A
 ActzHN14R1SRD/51N9sebAxGVZntXzSVKyMID6eGdNegWrz4q55H56ZrOMQ6IIaa7KSz3QSj
 3E8VIY4FawfjCSOuA2joemnXH1a1cJtuqbDPZrO2TUZlNGrO2TRi9e2nIzouShc5EdwmL6qt
 WG5nbGajkm1wCNb6t4v9ueYMPkHsr6xJorFZHlu7PKqB6YY3hRC8dMcCDSLkOPWf+iZrqtpE
 odFBlnYNfmAXp+1ynhUvaeH6eSOqCN3jvQbITUo8mMQsdVgVeJwRdeAOFhP7fsxNugii721U
 acNVDPpEz4QyxfZtfu9QGI405j9MXF/CPrHlNLD5ZM5k9NxnmIdCM9i1ii4nmWvmz9JdVJ+8
 6LkxauROr2apgTXxMnJ3Desp+IRWaFvTVhbwfxmwC5F3Kr0ouhr5Kt8jkQeD/vuqYuxOAyDI
 egjo3Y7OGqct+5nybmbOwU0EVNPA8QEQAN/79cFVNpC+8rmudnXGbob9sk0J99qnwM2tw33v
 uvQjEGAJTVCOHrewDbHmqZ5V1X1LI9cMlLUNMR3W0+L04+MH8s/JxshFST+hOaijGc81AN2P
 NrAQD7IKpA78Q2F3I6gpbMzyMy0DxmoKF73IAMQIknrhzn37DgM+x4jQgkvhFMqnnZ/xIQ9d
 QEBKDtfxH78QPosDqCzsN9HRArC75TiKTKOxC12ZRNFZfEPnmqJ260oImtmoD/L8QiBsdA4m
 Mdkmo6Pq6iAhbGQ5phmhUVuj+7O8rTpGRXySMLZ44BimM8yHWTaiLWxCehHgfUWRNLwFbrd+
 nYJYHoqyFGueZFBNxY4bS2rIEDg+nSKiAwJv3DUJDDd/QJpikB5HIjg/5kcSm7laqfbr1pmC
 ZbR2JCTp4FTABVLxt7pJP40SuLx5He63aA/VyxoInLcZPBNvVfq/3v3fkoILphi77ZfTvKrl
 RkDdH6PkFOFpnrctdTWbIFAYfU96VvySFAOOg5fsCeLv9/zD4dQEGsvva/qKZXkH/l2LeVp3
 xEXoFsUZtajPZgyRBxer0nVWRyeVwUQnLG8kjEOcZzX27GUpughi8w42p4oMD+96tr3BKTAr
 guRHJnU1M1xwRPbw5UsNXEOgYsFc8cdto0X7hQ2Ugc07CRSDvyH50IKXf2++znOTXFDhABEB
 AAHCwV8EGAECAAkFAlTTwPECGwwACgkQA5OWnS12CFAdRg//ZGV0voLRjjgX9ODzaz6LP+IP
 /ebGLXe3I+QXz8DaTkG45evOu6B2J53IM8t1xEug0OnfnTo1z0AFg5vU53L24LAdpi12CarV
 Da53WvHzG4BzCVGOGrAvJnMvUXf0/aEm0Sen2Mvf5kvOwsr9UTHJ8N/ucEKSXAXf+KZLYJbL
 NL4LbOFP+ywxtjV+SgLpDgRotM43yCRbONUXEML64SJ2ST+uNzvilhEQT/mlDP7cY259QDk7
 1K6B+/ACE3Dn7X0/kp8a+ZoNjUJZkQQY4JyMOkITD6+CJ1YsxhX+/few9k5uVrwK/Cw+Vmae
 A85gYfFn+OlLFO/6RGjMAKOsdtPFMltNOZoT+YjgAcW6Q9qGgtVYKcVOxusL8C3v8PAYf7Ul
 Su7c+/Ayr3YV9Sp8PH4X4jK/zk3+DDY1/ASE94c95DW1lpOcyx3n1TwQbwp6TzPMRe1IkkYe
 0lYj9ZgKaZ8hEmzuhg6FKXk9Dah+H73LdV57M4OFN8Xwb7v+oEG23vdsb2KBVG5K6Tv7Hb2N
 sfHWRdU3quYIistrNWWeGmfTlhVLgDhEmAsKZFH05QsAv3pQv7dH/JD+Tbn6sSnNAVrATff1
 AD3dXmt+5d3qYuUxam1UFGufGzV7jqG5QNStp0yvLP0xroB8y0CnnX2FY6bAVCU+CqKu+n1B
 LGlgwABHRtLCwe0EGAEIACAWIQTsOJyrwsTyXYYA0NADk5adLXYIUAUCWsTXAwIbAgCBCRAD
 k5adLXYIUHYgBBkWCAAdFiEEx1U9vxg1xAeUwus20p7yIq+KHe4FAlrE1wMACgkQ0p7yIq+K
 He6RfAEA+frSSvrHiuatNqvgYAJcraYhp1GQJrWSWMmi2eFcGskBAJyLp47etEn3xhJBLVVh
 2y2K4Nobb6ZgxA4Svfnkf7AAdicQALiaOKDwKD3tgf90ypEoummYzAxv8MxyPXZ7ylRnkheA
 eQDxuoc/YwMA4qyxhzf6K4tD/aT12XJd95gk+YAL6flGkJD8rA3jsEucPmo5eko4Ms2rOEdG
 jKsZetkdPKGBd2qVxxyZgzUkgRXduvyux04b9erEpJmoIXs/lE0IRbL9A9rJ6ASjFPGpXYrb
 73pb6Dtkdpvv+hoe4cKeae4dS0AnDc7LWSW3Ub0n61uk/rqpTmKuesmTZeB2GHzLN5GAXfNj
 ELHAeSVfFLPRFrjF5jjKJkpiyq98+oUnvTtDIPMTg05wSN2JtwKnoQ0TAIHWhiF6coGeEfY8
 ikdVLSZDEjW54Td5aIXWCRTBWa6Zqz/G6oESF+Lchu/lDv5+nuN04KZRAwCpXLS++/givJWo
 M9FMnQSvt4N95dVQE3kDsasl960ct8OzxaxuevW0OV/jQEd9gH50RaFif412DTrsuaPsBz6O
 l2t2TyTuHm7wVUY2J3gJYgG723/PUGW4LaoqNrYQUr/rqo6NXw6c+EglRpm1BdpkwPwAng63
 W5VOQMdnozD2RsDM5GfA4aEFi5m00tE+8XPICCtkduyWw+Z+zIqYk2v+zraPLs9Gs0X2C7X0
 yvqY9voUoJjG6skkOToGZbqtMX9K4GOv9JAxVs075QRXL3brHtHONDt6udYobzz+
Message-ID: <8837ea73-dcf5-801f-f037-267936bd65bc@suse.de>
Date: Tue, 27 Aug 2019 11:06:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827085344.30799-4-ming.lei@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_020625_288792_9CFC4B73 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jens Axboe <axboe@fb.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Long Li <longli@microsoft.com>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMjcvMDgvMjAxOSAxMDo1MywgTWluZyBMZWkgd3JvdGU6ClsuLi5dCj4gKwkJY2hhciAqZGV2
bmFtZTsKPiArCQljb25zdCBzdHJ1Y3QgY3B1bWFzayAqbWFzazsKPiArCQl1bnNpZ25lZCBsb25n
IGlycWZsYWdzID0gSVJRRl9TSEFSRUQ7Cj4gKwkJaW50IHZlY3RvciA9IHBjaV9pcnFfdmVjdG9y
KHBkZXYsIG52bWVxLT5jcV92ZWN0b3IpOwo+ICsKPiArCQlkZXZuYW1lID0ga2FzcHJpbnRmKEdG
UF9LRVJORUwsICJudm1lJWRxJWQiLCBuciwgbnZtZXEtPnFpZCk7Cj4gKwkJaWYgKCFkZXZuYW1l
KQo+ICsJCQlyZXR1cm4gLUVOT01FTTsKPiArCj4gKwkJbWFzayA9IHBjaV9pcnFfZ2V0X2FmZmlu
aXR5KHBkZXYsIG52bWVxLT5jcV92ZWN0b3IpOwo+ICsJCWlmIChtYXNrICYmIGNwdW1hc2tfd2Vp
Z2h0KG1hc2spID4gMSkKPiArCQkJaXJxZmxhZ3MgfD0gSVJRRl9SRVNDVUVfVEhSRUFEOwo+ICsK
PiArCQlyZXR1cm4gcmVxdWVzdF90aHJlYWRlZF9pcnEodmVjdG9yLCBudm1lX2lycSwgTlVMTCwg
aXJxZmxhZ3MsCj4gKwkJCQlkZXZuYW1lLCBudm1lcSk7CgpUaGlzIHdpbGwgbGVhayAnZGV2bmFt
ZScgd2hpY2ggZ2V0cyBhbGxvY2F0ZWQgYnkga2FzcHJpbnRmKCkgYSBmZXcgbGluZXMKYWJvdmUu
CgotLSAKSm9oYW5uZXMgVGh1bXNoaXJuICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNVU0Ug
TGFicyBGaWxlc3lzdGVtcwpqdGh1bXNoaXJuQHN1c2UuZGUgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICs0OSA5MTEgNzQwNTMgNjg5ClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1h
bnkgR21iSApNYXhmZWxkc3RyLiA1CjkwNDA5IE7DvHJuYmVyZwpHZXJtYW55CihIUkIgMjQ3MTY1
LCBBRyBNw7xuY2hlbikKS2V5IGZpbmdlcnByaW50ID0gRUMzOCA5Q0FCIEMyQzQgRjI1RCA4NjAw
IEQwRDAgMDM5MyA5NjlEIDJENzYgMDg1MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbnZtZQo=
